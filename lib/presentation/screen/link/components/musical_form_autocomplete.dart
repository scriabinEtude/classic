import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_bloc.dart';
import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_event.dart';
import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/data/model/musical_form.dart';
import 'package:classic/presentation/widget/autocomplete/app_autocomplete.dart';
import 'package:classic/presentation/widget/autocomplete/custom_options/custom_option_add.dart';
import 'package:classic/presentation/widget/autocomplete/data/mixin_autocompletable.dart';

class MusicalFormAutoComplete extends StatelessWidget {
  const MusicalFormAutoComplete({super.key});

  pushComposerRegisterScreen(
      BuildContext context, ComposerAutoCompleteState state) {
    context.go('/link/register/${state.composer!.id}/musicalform');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComposerAutoCompleteBloc, ComposerAutoCompleteState>(
      builder: (context, state) {
        return AnimatedOpacity(
          opacity: state.composer == null ? 0 : 1,
          duration: const Duration(milliseconds: 250),
          child: AppAutoComplete<Autocompletable>(
            initialValue: state.musicalForm == null
                ? ""
                : state.musicalForm!.displayString(),
            label: "형식",
            options: [
              CustomOptionIconAndText(
                onSelect: () => pushComposerRegisterScreen(context, state),
                text: "형식 추가",
              ),
              if (state.composer != null) ...state.composer!.musicalForms,
            ],
            status: state.status,
            onSelected: (form) {
              if (form is MusicalForm) {
                BlocProvider.of<ComposerAutoCompleteBloc>(context)
                    .add(ComposerAutoCompleteEvent.selectMusicalForm(form));
              }
            },
          ),
        );
      },
    );
  }
}
