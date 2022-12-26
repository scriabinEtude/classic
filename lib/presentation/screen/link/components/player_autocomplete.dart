import 'package:classic/bloc/composer/auto_complete/autocomplete_bloc.dart';
import 'package:classic/bloc/composer/auto_complete/autocomplete_event.dart';
import 'package:classic/bloc/composer/auto_complete/autocomplete_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/data/model/player.dart';
import 'package:classic/presentation/screen/player/player_register_screen.dart';
import 'package:classic/presentation/widget/autocomplete/app_autocomplete.dart';
import 'package:classic/presentation/widget/autocomplete/custom_options/custom_option_add.dart';
import 'package:classic/presentation/widget/autocomplete/data/autocompletable.dart';

class PlayerAutoComplete extends StatelessWidget {
  const PlayerAutoComplete({super.key});

  pushComposerRegisterScreen(BuildContext context) {
    context.go(PlayerRegisterScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AutoCompleteBloc, AutoCompleteState>(
      builder: (context, state) {
        return AppAutoComplete<Autocompletable>(
          label: "연주자",
          options: [
            CustomOptionIconAndText(
              onSelect: () => pushComposerRegisterScreen(context),
              text: "연주자 추가",
            ),
            ...state.players
          ],
          status: state.status,
          onSelected: (player) {
            if (player is Player) {
              BlocProvider.of<AutoCompleteBloc>(context)
                  .add(AutoCompleteEvent.selectPlayer(player));
            }
          },
          validator: (value) {
            if (value == null || value.isEmpty) return "연주자를 입력해주세요.";
            if (state.players
                .where((player) => player.displayString() == value)
                .isEmpty) {
              return "등록되지 않은 연주자입니다. 목록에서 선택하거나 추가해주세요.";
            }
            return null;
          },
        );
      },
    );
  }
}
