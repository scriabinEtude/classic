import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_bloc.dart';
import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_event.dart';
import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/data/model/music.dart';
import 'package:classic/presentation/widget/autocomplete/app_autocomplete.dart';
import 'package:classic/presentation/widget/autocomplete/custom_options/custom_option_add.dart';
import 'package:classic/presentation/widget/autocomplete/data/mixin_autocompletable.dart';

class MusicAutoComplete extends StatelessWidget {
  const MusicAutoComplete({super.key});

  goMusicRegisterScreen(BuildContext context, ComposerAutoCompleteState state) {
    context.go(
        '/link/register/${state.composer!.id}/${state.musicalForm!.id}/music');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComposerAutoCompleteBloc, ComposerAutoCompleteState>(
      builder: (context, state) {
        return AnimatedOpacity(
          opacity: state.musicalForm == null ? 0 : 1,
          duration: const Duration(milliseconds: 200),
          child: AppAutoComplete<Autocompletable>(
            initialValue:
                state.music == null ? "" : state.music!.displayString(),
            label: "제목",
            options: [
              CustomOptionIconAndText(
                onSelect: () => goMusicRegisterScreen(context, state),
                text: "제목 추가",
              ),
              if (state.musicalForm != null) ...state.musicalForm!.musics,
            ],
            status: state.status,
            onSelected: (music) {
              if (music is Music) {
                BlocProvider.of<ComposerAutoCompleteBloc>(context)
                    .add(ComposerAutoCompleteEvent.selectMusic(music));
              }
            },
          ),
        );
      },
    );
  }
}
