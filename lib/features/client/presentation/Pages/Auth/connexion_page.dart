import 'package:flutter/material.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/custom_button.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/custom_icon_button.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/custom_text_field.dart';

class ConnexionPage extends StatelessWidget {
  const ConnexionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset("assets/images/login.png")),
                CustomTextField(
                  hintText: "Ex: fakoro77@gmail.com",
                  controller: emailController,
                  label: "Email",
                  suffixIcon: const Icon(Icons.mail_outline),
                ),
                CustomTextField(
                  controller: passwordController,
                  obscureText: true,
                  label: "Mot de passe",
                  suffixIcon: const Icon(Icons.password),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Reinitialisez vôtre mot de passe?!",
                    style:
                        TextStyle(fontFamily: "PatrinckHand", color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: CustomButton(
                    text: "Se Connecter",
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
                        text: "Vous n'avez pas de compte ",
                        style: TextStyle(fontFamily: "Poppins")),
                    TextSpan(
                        text: "S'enregistrer",
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
