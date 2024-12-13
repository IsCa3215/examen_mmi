import 'package:flutter/material.dart';

class CustomTextFormFieldMmi extends StatelessWidget {

    final String? hintText;
    final String? labelText;
    final String? helperText;
    final IconData? icono;
    final TextInputType? keyboardAction;
    final String formProperty;
    final Map<String, String> formValues;
    final bool obscureText;

  const CustomTextFormFieldMmi({
    super.key, this.hintText, this.labelText, this.helperText, this.icono, this.keyboardAction, required this.formProperty, required this.formValues, required this.obscureText,
  });

  @override

  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardAction,
      onChanged: (value) {
        formValues[formProperty] = value;
      
      },
      obscureText: obscureText,
      validator: (value) {
        if (value!.length < 8) {
          return 'Minimo 8 caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        suffixIcon: Icon(icono),
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        
        border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}