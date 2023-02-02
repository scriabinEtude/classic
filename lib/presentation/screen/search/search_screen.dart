import 'package:classic/bloc/search/search_bloc.dart';
import 'package:classic/bloc/search/search_event.dart';
import 'package:classic/bloc/search/search_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/data/model/search_result.dart';
import 'package:classic/data/enum/search_type.dart';
import 'package:classic/presentation/screen/era/era_register_screen.dart';
import 'package:classic/presentation/screen/music/music_register_screen.dart';
import 'package:classic/presentation/screen/person/person_register_screen.dart';
import 'package:classic/presentation/screen/search/components/register_choice_bottom_sheet.dart';
import 'package:easy_debounce/easy_debounce.dart';

part 'components/search_bar.dart';
part 'components/search_result_list.dart';
part 'components/search_result_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    super.key,
    required this.type,
    this.initSearch,
  });

  final SearchType type;
  final String? initSearch;

  static const String routeName = "/search";

  static void push(
    BuildContext context,
    SearchType type, {
    String? initialSearch,
  }) {
    context.push(
        "$routeName/${type.index}${initialSearch == null ? "" : "/$initialSearch"}");
  }

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late final SearchBloc bloc;
  late final TextEditingController controller;

  @override
  void initState() {
    initVar();
    super.initState();
    initData();
  }

  initVar() {
    bloc = SearchBloc(type: widget.type);
    controller = TextEditingController(text: widget.initSearch);
    controller.addListener(() {
      EasyDebounce.debounce(
        "SearchBloc.search",
        const Duration(milliseconds: 400),
        () => bloc.add(SearchEvent.search(controller.text)),
      );
    });
  }

  initData() {
    if (widget.initSearch != null) {
      bloc.add(SearchEvent.search(widget.initSearch!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _SearchBar(
          bloc: bloc,
          controller: controller,
        ),
      ),
      body: _SearchResultList(bloc: bloc),
    );
  }
}
