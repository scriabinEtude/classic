import 'package:classic/bloc/composer/auto_complete/autocomplete_bloc.dart';
import 'package:classic/bloc/composer/auto_complete/autocomplete_event.dart';
import 'package:classic/bloc/composer/auto_complete/autocomplete_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/data/model/music.dart';
import 'package:classic/presentation/widget/autocomplete/app_autocomplete.dart';
import 'package:classic/presentation/widget/autocomplete/custom_options/custom_option_add.dart';
import 'package:classic/presentation/widget/autocomplete/data/autocompletable.dart';

class MusicAutoComplete extends StatelessWidget {
  const MusicAutoComplete({super.key});

  goMusicRegisterScreen(BuildContext context, AutoCompleteState state) {
    context.go(
        '/link/register/${state.composer!.id}/${state.musicalForm!.id}/music');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AutoCompleteBloc, AutoCompleteState>(
      builder: (context, state) {
        return AnimatedOpacity(
          opacity: state.musicalForm == null ? 0 : 1,
          duration: const Duration(milliseconds: 200),
          child: AppAutoComplete<Autocompletable>(
            label: "제목",
            options: [
              CustomOptionIconAndText(
                onSelect: () => goMusicRegisterScreen(context, state),
                text: "제목 추가",
              ),
              ...state.musics,
            ],
            status: state.status,
            onSelected: (music) {
              if (music is Music) {
                BlocProvider.of<AutoCompleteBloc>(context)
                    .add(AutoCompleteEvent.selectMusic(music));
              }
            },
            validator: (value) {
              if (value == null || value.isEmpty) return "음악형식을 입력해주세요.";
              if (state.musics
                  .where((musics) => musics.displayString() == value)
                  .isEmpty) {
                return "등록되지 않은 제목입니다. 목록에서 선택하거나 추가해주세요.";
              }
              return null;
            },
          ),
        );
      },
    );
  }
}
