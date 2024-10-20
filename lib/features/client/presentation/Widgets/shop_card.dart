import 'package:flutter/material.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    super.key,
    required this.shopName,
    required this.shopImageUrl,
    required this.shopDescription,
    required this.rating,
    required this.onPressed,
  });

  final String shopName;
  final String shopImageUrl;
  final String shopDescription;
  final double rating;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image de la boutique
          shopImageUrl.isNotEmpty
              ? Image.network(
                  shopImageUrl,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                )
              : Image.asset(
                  "assets/images/default_shop.png",
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nom de la boutique
                Text(
                  shopName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),

                // Description de la boutique
                Text(
                  shopDescription.length > 60
                      ? "${shopDescription.substring(0, 60)}..."
                      : shopDescription,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8),

                // Évaluation avec étoiles
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    Icon(rating >= 4.5 ? Icons.star : Icons.star_half,
                        color: Colors.amber, size: 18),
                    Icon(rating >= 5 ? Icons.star : Icons.star_border,
                        color: Colors.amber, size: 18),
                    const SizedBox(width: 6),
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Bouton "Visiter la boutique"
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: onPressed,
                    child: const Text(
                      'Visiter la boutique',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
