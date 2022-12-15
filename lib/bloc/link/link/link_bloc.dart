import 'package:bloc/bloc.dart';
import 'package:classic/bloc/link/link/link_event.dart';
import 'package:classic/bloc/link/link/link_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/model/link.dart';
import 'package:classic/data/repository/link/link/link_repository.dart';

class LinkBloc extends Bloc<LinkEvent, LinkState> {
  LinkBloc()
      : _linkRepository = di.get<LinkRepository>(),
        super(LinkState(status: StatusInit())) {
    on<LinkEventGetLinks>(onGetLinks);
    add(LinkEventGetLinks());
  }

  final LinkRepository _linkRepository;

  onGetLinks(LinkEventGetLinks event, Emitter emit) async {
    emit(state.copyWith(status: Status.loading()));
    try {
      Result<List<Link>> result = await _linkRepository.getLinks();
      result.when(
        success: (links) => emit(
          state.copyWith(status: Status.success(), links: links),
        ),
        failure: (status, message) => emit(state.copyWith(
            status: Status.fail(code: status, message: message))),
      );
    } catch (e) {
      l.el('linkbloc ongetlinks', e);
      emit(state.copyWith(status: Status.fail(message: e.toString())));
    }
  }
}
