import 'package:classic/bloc/search/search_bloc.dart';
import 'package:classic/bloc/search/search_event.dart';
import 'package:classic/bloc/search/search_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/data/model/search_result.dart';
import 'package:classic/presentation/screen/search/search_type.dart';

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
        title: _SearchBar(controller: controller),
      ),
      body: _SearchResultList(bloc: bloc),
    );
  }
}
