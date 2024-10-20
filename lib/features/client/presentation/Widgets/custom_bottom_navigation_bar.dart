import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:telefoni_client/features/client/presentation/Controller/navigation_controller.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController = Get.find(); // Récupérer le contrôleur

    return Obx(() => GNav(
          tabMargin: const EdgeInsets.all(10),
          backgroundColor: Colors.white,
          rippleColor: const Color.fromARGB(255, 84, 236, 38),
          hoverColor: const Color.fromARGB(255, 74, 226, 28),
          haptic: false,
          tabBorderRadius: 0,
          curve: Curves.easeOutExpo,
          duration: const Duration(milliseconds: 100),
          gap: 8,
          color: Colors.grey[800],
          activeColor: Colors.white,
          iconSize: 24,
          tabBackgroundColor: Theme.of(context).primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          selectedIndex: navigationController.selectedIndex.value,
          onTabChange: (index) {
            navigationController.changePage(index);
          },
          tabs: const [
            GButton(icon: Icons.home, text: 'Acceuil'),
            GButton(icon: Icons.shop, text: 'Boutique'),
            GButton(icon: Icons.shopping_bag, text: 'Vendre'),
            GButton(icon: Icons.messenger, text: 'Message'),
            GButton(icon: Icons.person_outline, text: 'Profil'),
          ],
        ));
  }
}
