import 'package:classic/bloc/link/link/link_bloc.dart';
import 'package:classic/bloc/link/link/link_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/data/model/link.dart';

class LinkScreen extends StatelessWidget {
  const LinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LinkBloc, LinkState>(
      builder: (context, state) {
        return ListView(
          children: state.links.map((link) => _LinkWidget(link)).toList(),
        );
      },
    );
  }
}

class _LinkWidget extends StatelessWidget {
  const _LinkWidget(this.link);
  final Link link;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.amber,
      child: Row(
        children: [
          // Image.network(src)
        ],
      ),
    );
  }
}
