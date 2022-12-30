import 'package:classic/bloc/link/link/link_bloc.dart';
import 'package:classic/bloc/link/link/link_state.dart';
import 'package:classic/bloc/link/link/link_event.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/presentation/screen/link/components/link_widget.dart';
import 'package:classic/presentation/screen/link/link_detail_screen.dart';

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
            children: state.links
                .map((link) => Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                      child: LinkWidget(
                        link,
                        onTap: (link) {
                          context.go(
                            '/link/:${link.id}',
                            extra: link,
                          );
                        },
                      ),
                    ))
                .toList(),
          ),
        );
      },
    );
  }
}
