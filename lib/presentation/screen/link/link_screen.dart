import 'package:classic/bloc/link/link/link_bloc.dart';
import 'package:classic/bloc/link/link/link_state.dart';
import 'package:classic/bloc/link/link/link_event.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/presentation/screen/link/components/link_widget.dart';

class LinkScreen extends StatelessWidget {
  const LinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LinkBloc, LinkState>(
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async {
            StateStreamableSource streamSource =
                BlocProvider.of<LinkBloc>(context)..add(LinkEvent.getLinks());
            await streamSource.stream.first;
          },
          child: ListView(
            children: state.links.map((link) => LinkWidget(link)).toList(),
          ),
        );
      },
    );
  }
}
