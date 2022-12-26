import 'package:classic/bloc/composer/auto_complete/autocomplete_bloc.dart';
import 'package:classic/bloc/composer/auto_complete/autocomplete_event.dart';
import 'package:classic/bloc/composer/auto_complete/autocomplete_state.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/data/model/musical_form.dart';
import 'package:classic/presentation/widget/autocomplete/app_autocomplete.dart';
import 'package:classic/presentation/widget/autocomplete/custom_options/custom_option_add.dart';
import 'package:classic/presentation/widget/autocomplete/data/autocompletable.dart';

class MusicalFormAutoComplete extends StatelessWidget {
  const MusicalFormAutoComplete({super.key});

  goMusicalFormRegisterScreen(BuildContext context, AutoCompleteState state) {
    context.go('/link/register/${state.composer!.id}/musicalForm');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AutoCompleteBloc, AutoCompleteState>(
      builder: (context, state) {
        return AnimatedOpacity(
          opacity: state.composer == null ? 0 : 1,
          duration: const Duration(milliseconds: 200),
          child: AppAutoComplete<Autocompletable>(
            label: "형식",
            options: [
              CustomOptionIconAndText(
                onSelect: () => goMusicalFormRegisterScreen(context, state),
                text: "형식 추가",
              ),
              ...state.musicalForms,
            ],
            status: state.status,
            onSelected: (form) {
              if (form is MusicalForm) {
                BlocProvider.of<AutoCompleteBloc>(context)
                    .add(AutoCompleteEvent.selectMusicalForm(form));
              }
            },
            validator: (value) {
              if (value == null || value.isEmpty) return "음악형식을 입력해주세요.";
              if (state.musicalForms
                  .where((musicalForm) => musicalForm.displayString() == value)
                  .isEmpty) {
                return "등록되지 않은 음악형식입니다. 목록에서 선택하거나 추가해주세요.";
              }
              return null;
            },
          ),
        );
      },
    );
  }
}
