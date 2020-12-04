import 'package:chat/src/widgets/boton_azul.dart';
import 'package:chat/src/widgets/custom_input.dart';
import 'package:chat/src/widgets/labels_widget.dart';
import 'package:chat/src/widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            // height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LogoWidget(
                  titulo: 'Registro',
                ),
                _Form(),
                LabelsWidget(
                  titulo: '¿Ya tienes cuenta?',
                  subtitulo: 'Inicia sesion',
                  ruta: 'login',
                ),
                Text('Términos y condiciones de uso',
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.perm_identity,
            placeolder: 'Nombre',
            keyboardType: TextInputType.text,
            textController: nameController,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            placeolder: 'Email',
            keyboardType: TextInputType.emailAddress,
            textController: emailController,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeolder: 'Password',
            textController: passController,
            isPassword: true,
          ),
          BotonAzul(
            text: 'Ingrese',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
