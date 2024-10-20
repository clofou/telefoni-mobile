import 'package:flutter/material.dart';
import 'package:telefoni_client/features/client/data/models/brand.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/brand_circle.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/phone_card.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/poster_card.dart';
import 'package:telefoni_client/features/client/data/models/phone.dart'; // Importez la classe Phone

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    // Liste de marques
    final brands = <Brand>[
      Brand(id: 1, brandLogoUrl: null, brandName: "Apple"),
      Brand(id: 2, brandLogoUrl: null, brandName: "Tecno"),
      Brand(id: 3, brandLogoUrl: null, brandName: "Redmi"),
      Brand(id: 4, brandLogoUrl: null, brandName: "Samsung"),
    ];

    // Liste de téléphones (remplacez avec des données dynamiques plus tard)
    final List<Phone> phones = [
      Phone(
        title: "Iphone 16 à vendre pas cher",
        description: "À vendre pas très cher, mémoire 128Go, excellent état",
        price: "200 0000",
        totalLikes: 34,
        isLiked: true,
        images: [
          "https://example.com/image1.jpg",
          "https://example.com/image2.jpg",
        ],
        sellerName: "John Doe", // Nom du vendeur
        sellerType: "individu", // Type de vendeur
        condition: "occasion", // État du téléphone
      ),
      Phone(
        title: "Samsung Galaxy S21",
        description: "Smartphone haut de gamme, état neuf, 256Go",
        price: "150 0000",
        totalLikes: 12,
        isLiked: false,
        images: [
          "https://example.com/image3.jpg",
          "https://example.com/image4.jpg",
        ],
        sellerName: "Tech Store", // Nom du vendeur
        sellerType: "boutique", // Type de vendeur
        condition: "neuf", // État du téléphone
      ),
      // Ajoutez d'autres téléphones selon vos besoins
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Titre des marques
          const Text(
            "Marques",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "PatrickHandSC",
              fontSize: 24,
            ),
          ),
          // Affichage des marques dans une liste horizontale
          Container(
            height: 100,
            padding: const EdgeInsets.all(8),
            child: ListView.builder(
              itemCount: brands.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: BrandCircle(
                  brandName: brands[index].brandName,
                  imageUrl: brands[index].brandLogoUrl,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Affichage d'une bannière promotionnelle
          const PosterCard(
            percentage: 20,
            description: "Venez vite !",
            posterColor: Colors.red,
          ),
          const SizedBox(height: 10),

          // Grille de cartes de téléphone (2 colonnes)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              physics:
                  const NeverScrollableScrollPhysics(), // Empêche la scrollabilité du gridView
              shrinkWrap:
                  true, // Permet d'utiliser GridView dans SingleChildScrollView
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Nombre de colonnes
                crossAxisSpacing: 10, // Espace horizontal entre les colonnes
                mainAxisSpacing: 10, // Espace vertical entre les lignes
                childAspectRatio: 0.75, // Rapport entre largeur et hauteur
              ),
              itemCount: phones.length, // Nombre d'éléments dans la liste
              itemBuilder: (context, index) {
                final phone = phones[index];
                return PhoneCard(
                  phone: phone, // Passer l'objet Phone ici
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
