import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telefoni_client/features/client/presentation/Controller/navigation_controller.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/custom_bottom_navigation_bar.dart';
import 'package:telefoni_client/routes.dart';
import 'package:telefoni_client/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialiser le NavigationController
    Get.put(NavigationController());

    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController = Get.find();

    return Scaffold(
      body: Obx(() =>
          navigationController.pages[navigationController.selectedIndex.value]),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
