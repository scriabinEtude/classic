import 'package:classic/bloc/composer/auto_complete/autocomplete_bloc.dart';
import 'package:classic/bloc/composer/auto_complete/autocomplete_event.dart';
import 'package:classic/bloc/composer/auto_complete/autocomplete_state.dart';
import 'package:classic/bloc/link/register/link_register_bloc.dart';
import 'package:classic/bloc/link/register/link_register_event.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/data/model/conductor.dart';
import 'package:classic/presentation/screen/conductor/conductor_register_screen.dart';
import 'package:classic/presentation/widget/autocomplete/app_autocomplete.dart';
import 'package:classic/presentation/widget/autocomplete/custom_options/custom_option_add.dart';
import 'package:classic/presentation/widget/autocomplete/data/autocompletable.dart';

class ConductorAutoComplete extends StatelessWidget {
  const ConductorAutoComplete({super.key});

  pushConductorRegisterScreen(BuildContext context) {
    context.go(ConductorRegisterScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AutoCompleteBloc, AutoCompleteState>(
      builder: (context, state) {
        return AppAutoComplete<Autocompletable>(
          label: "지휘자",
          options: [
            CustomOptionIconAndText(
              onSelect: () => pushConductorRegisterScreen(context),
              text: "지휘자 추가",
            ),
            ...state.conductors
          ],
          status: state.status,
          onSelected: (conductor) {
            if (conductor is Conductor) {
              BlocProvider.of<AutoCompleteBloc>(context)
                  .add(AutoCompleteEvent.selectConductor(conductor));
            }
          },
          validator: (value) {
            if (value == null || value.isEmpty) return "지휘자를 입력해주세요.";
            if (state.players
                .where((player) => player.displayString() == value)
                .isEmpty) {
              return "등록되지 않은 지휘자입니다. 목록에서 선택하거나 추가해주세요.";
            }
            return null;
          },
          suffixIcon: IconButton(
            onPressed: () {
              BlocProvider.of<LinkRegisterBloc>(context)
                  .add(LinkRegisterEvent.showConductorField(false));
            },
            icon: const Icon(Icons.remove),
          ),
        );
      },
    );
  }
}
