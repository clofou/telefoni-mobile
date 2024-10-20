import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:telefoni_client/features/client/presentation/Pages/Home/principal.dart';
import 'package:telefoni_client/features/client/presentation/Pages/Shop/boutique_page.dart';

class NavigationController extends GetxController {
  // Index par défaut
  var selectedIndex = 0.obs;

  // Liste des pages
  final pages = [
    const Principal(),
    const BoutiquePage(),
    const Text('Vendre Page'), // Placeholder pour les autres pages
    const Text('Messages Page'),
    const Text('Profil Page'),
  ];

  // Méthode pour changer d'index
  void changePage(int index) {
    selectedIndex.value = index;
  }
}
