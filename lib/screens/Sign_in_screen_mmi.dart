import 'package:examen_mmi/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignInScreenMmi extends StatelessWidget {
  const SignInScreenMmi({super.key});

  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'email': 'sabedios@g.g',
      'password': 'tal',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms: inputs"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              FlutterLogo(size: 100,),
              CustomTextFormFieldMmi(
                  helperText: "Usuario",
                  labelText: "Usuario",
                  hintText: "Introduce un usuario",
                  icono: Icons.person_3_rounded,
                  formProperty: 'Usuario',
                  formValues: formValues,

              ),

               CustomTextFormFieldMmi(
                  helperText: "Contraseña",
                  labelText: "Contraseña",
                  hintText: "Introduzca una contraseña",
                  icono: Icons.password,
                  formProperty: 'Contraseña',
                  formValues: formValues,

              ),

              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!myFormKey.currentState!.validate()){
                      print('Error en el formulario');
                      
                      return;
                    } else {
                      
                    }
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Sign in'))))
            ],
          ),
        ),
      ),
    );
  }
}
