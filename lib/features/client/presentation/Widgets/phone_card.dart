import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telefoni_client/features/client/data/models/phone.dart';
import 'package:telefoni_client/features/client/presentation/Pages/Home/phone_details_page.dart'; // Importez la classe Phone

class PhoneCard extends StatelessWidget {
  final Phone phone; // Utilisation de la classe Phone

  const PhoneCard({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Logique de navigation vers la page de détails ici
        Get.to(PhoneDetailsPage(phone: phone)); // si vous utilisez GetX
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section Image avec placeholder si aucune image n'est fournie
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
              child: phone.images.isNotEmpty
                  ? Image.network(
                      phone.images[0],
                      width: double.infinity,
                      height: 180,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/images/iphone14.png',
                      width: double.infinity,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
            ),

            // Section Informations
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Titre
                  Text(
                    phone.title.length > 20 ? "${phone.title.substring(0, 17)}..." : phone.title,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8.0),

                  // Description
                  Text(
                    phone.description.length > 50
                        ? "${phone.description.substring(0, 47)}..."
                        : phone.description,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[600],
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 12.0),

                  // Prix
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        phone.price,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),

                      // Bouton et compteur de likes
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              // Logique pour gérer les likes ici
                            },
                            icon: Icon(
                              phone.isLiked ? Icons.favorite : Icons.favorite_border,
                              color: phone.isLiked ? Colors.red : Colors.grey,
                            ),
                          ),
                          Text(
                            '${phone.totalLikes}',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
