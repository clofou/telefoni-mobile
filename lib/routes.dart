import 'package:get/get.dart';
import 'package:telefoni_client/features/client/presentation/Pages/Auth/connexion_page.dart';
import 'package:telefoni_client/features/client/presentation/Pages/Auth/forget_password_page.dart';
import 'package:telefoni_client/features/client/presentation/Pages/Auth/register_page.dart';
import 'package:telefoni_client/features/client/template.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => const ForgetPasswordPage()),
    GetPage(name: '/login', page: () => const ConnexionPage()),
    GetPage(name: '/register', page: () => const RegisterPage()),
    GetPage(name: '/home', page: () => const Template()),
    // Ajoutez d'autres routes ici
  ];
}
