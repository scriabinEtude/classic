import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_bloc.dart';
import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_event.dart';
import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/data/model/composer.dart';
import 'package:classic/presentation/screen/composer/composer_register_screen.dart';
import 'package:classic/presentation/widget/autocomplete/app_autocomplete.dart';
import 'package:classic/presentation/widget/autocomplete/custom_options/custom_option_add.dart';
import 'package:classic/presentation/widget/autocomplete/data/autocompletable.dart';

class ComposerAutoComplete extends StatelessWidget {
  const ComposerAutoComplete({super.key});

  pushComposerRegisterScreen(BuildContext context) {
    context.go(ComposerRegisterScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComposerAutoCompleteBloc, ComposerAutoCompleteState>(
      builder: (context, state) {
        return AppAutoComplete<Autocompletable>(
          label: "작곡가",
          options: [
            CustomOptionIconAndText(
              onSelect: () => pushComposerRegisterScreen(context),
              text: "작곡가 추가",
            ),
            ...state.composers
          ],
          status: state.status,
          onSelected: (composer) {
            if (composer is Composer) {
              BlocProvider.of<ComposerAutoCompleteBloc>(context)
                  .add(ComposerAutoCompleteEvent.select(composer));
            }
          },
          validator: (value) {
            if (value == null || value.isEmpty) return "작곡가를 입력해주세요.";
            if (state.composers
                .where((composer) => composer.displayString() == value)
                .isEmpty) {
              return "등록되지 않은 작곡가입니다. 목록에서 선택하거나 추가해주세요.";
            }
            return null;
          },
        );
      },
    );
  }
}
