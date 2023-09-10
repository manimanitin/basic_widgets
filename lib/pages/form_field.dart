import 'package:flutter/material.dart';

class SliderFormField extends FormField<double> {
  SliderFormField({
    Key? key,
    FormFieldSetter<double>? onSaved,
    FormFieldValidator<double>? validator,
    double initialValue = 0.0,
  }) : super(
          key: key,
          onSaved: onSaved,
          validator: validator,
          initialValue: initialValue,
          builder: (FormFieldState<double> state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SliderWidget(
                  value: state.value ?? initialValue,
                  onChanged: state.didChange,
                ),
                if (state.hasError)
                  Text(
                    state.errorText ?? '',
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
              ],
            );
          },
        );
}

class SliderWidget extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;

  const SliderWidget({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Valor del Slider: $value'),
        Slider(
          value: value,
          onChanged: onChanged,
          min: 0.0,
          max: 100.0,
          divisions: 100,
        ),
      ],
    );
  }
}
