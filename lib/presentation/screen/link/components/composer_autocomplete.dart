import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_bloc.dart';
import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/presentation/screen/composer/composer_register_screen.dart';
import 'package:classic/presentation/widget/autocomplete/app_autocomplete.dart';
import 'package:classic/presentation/widget/autocomplete/custom_options/custom_option_add.dart';
import 'package:classic/presentation/widget/autocomplete/data/mixin_autocompletable.dart';

class ComposerAutoComplete extends StatelessWidget {
  const ComposerAutoComplete({super.key});

  pushComposerRegisterScreen(BuildContext context) {
    context.pushNamed(ComposerRegisterScreen.routeName);
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
        );
      },
    );
  }
}
