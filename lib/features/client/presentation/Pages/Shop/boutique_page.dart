import 'package:flutter/material.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/custom_bottom_navigation_bar.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/shop_card.dart';

class BoutiquePage extends StatefulWidget {
  const BoutiquePage({super.key});

  @override
  _BoutiquePageState createState() => _BoutiquePageState();
}

class _BoutiquePageState extends State<BoutiquePage> {
  String selectedFilter =
      'Meilleures Notes'; // Valeur par défaut pour le filtre

  // Exemple de boutiques (cela peut être remplacé par des données dynamiques)
  final List<Map<String, dynamic>> boutiques = [
    {
      'name': 'Boutique de Téléphones',
      'imageUrl': 'https://example.com/shop1.jpg',
      'description': 'Nous vendons des téléphones de haute qualité.',
      'rating': 4.8,
    },
    {
      'name': 'Accessoires Mobiles',
      'imageUrl': 'https://example.com/shop2.jpg',
      'description': 'Boutique spécialisée dans les accessoires mobiles.',
      'rating': 4.2,
    },
    {
      'name': 'Réparations Express',
      'imageUrl': 'https://example.com/shop3.jpg',
      'description': 'Service de réparation rapide pour tous vos appareils.',
      'rating': 4.6,
    },
  ];

  // Méthode pour filtrer les boutiques
  void _applyFilter(String filter) {
    setState(() {
      selectedFilter = filter;
      if (filter == 'Meilleures Notes') {
        boutiques.sort((a, b) => b['rating'].compareTo(a['rating']));
      } else if (filter == 'Les plus populaires') {
        // Ici, vous pouvez ajouter une logique pour trier selon la popularité
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0EEDB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Boutiques',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          // Bouton de filtre
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: DropdownButton<String>(
              value: selectedFilter,
              icon: const Icon(Icons.filter_list, color: Colors.black),
              underline: Container(),
              items: <String>['Meilleures Notes', 'Les plus populaires']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                _applyFilter(newValue!);
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: boutiques.length,
          itemBuilder: (context, index) {
            final shop = boutiques[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ShopCard(
                shopName: shop['name'],
                shopImageUrl: shop['imageUrl'],
                shopDescription: shop['description'],
                rating: shop['rating'],
                onPressed: () {
                  // Logique lors de la visite d'une boutique
                  print('Visite de la boutique ${shop['name']}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
