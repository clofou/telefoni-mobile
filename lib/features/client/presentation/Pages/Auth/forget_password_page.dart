import 'package:flutter/material.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/custom_button.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/custom_text_field.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset("assets/images/forgot_password.png")),
              const CustomTextField(
                label: "Email",
                suffixIcon: Icon(Icons.mail),
                hintText: "Entrez vôtre Email",
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "* ", style: TextStyle(color: Colors.red)),
                    TextSpan(
                        text:
                            "On vous enverrait un mail pour reinitialiser vôtre mot de passe",
                        style: TextStyle(
                            color: Colors.grey, fontFamily: "PatrickHand")),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: CustomButton(
                  text: "Envoyez",
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
