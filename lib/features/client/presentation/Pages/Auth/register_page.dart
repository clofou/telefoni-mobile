import 'package:flutter/material.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/custom_button.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/custom_icon_button.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Creez Un \nCompte",
                  style: TextStyle(
                      fontFamily: "PatrickHandSC",
                      fontSize: 64,
                      color: Colors.black),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: emailController,
                  label: "Email",
                  suffixIcon: const Icon(Icons.mail_outline),
                  hintText: "Ex: fakoro77@gmail.com",
                ),
                CustomTextField(
                  controller: passwordController,
                  label: "Mot de passe",
                  obscureText: true,
                  suffixIcon: const Icon(Icons.password),
                ),
                CustomTextField(
                  controller: confirmPasswordController,
                  label: "Confirmez Mot de passe",
                  obscureText: true,
                  suffixIcon: const Icon(Icons.password),
                ),
                Text.rich(
                  TextSpan(
                    style: const TextStyle(
                        color: Colors.grey, fontFamily: "PatrickHand"),
                    children: [
                      const TextSpan(text: "En cliquant sur le bouton "),
                      const TextSpan(
                        text: "Creez un compte ",
                        style: TextStyle(color: Colors.black),
                      ),
                      const TextSpan(text: "Vous acceptez "),
                      TextSpan(
                          text: "les conditions générales d'utilisations",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: CustomButton(
                    text: "Creez Un compte",
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "- ou continuez avec -",
                    style: TextStyle(fontFamily: "PatrickHand"),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      label: const Text("Google"),
                      icon: Image.asset("assets/images/google.png"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CustomIconButton(
                      label: const Text("Apple"),
                      icon: Image.asset("assets/images/apple.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text.rich(TextSpan(children: [
                    const TextSpan(
                        text: "Vous avez déjà un compte ",
                        style: TextStyle(fontFamily: "Poppins")),
                    TextSpan(
                        text: "Se Connecter",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontFamily: "PatrickHandSC",
                            fontSize: 21))
                  ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
