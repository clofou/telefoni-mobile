import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:telefoni_client/features/client/data/models/phone.dart';
import 'package:telefoni_client/features/client/presentation/Controller/phone_details_controller.dart';// Importer le modèle

class PhoneDetailsPage extends StatelessWidget {
  final Phone phone;
  final PhoneDetailsController controller = Get.put(PhoneDetailsController());

  PhoneDetailsPage({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(phone.title),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Slider des photos
              CarouselSlider(
                items: phone.images.map((imageUrl) {
                  return Container(
                    margin: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(imageUrl, fit: BoxFit.cover, width: 1000),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 300,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
              ),
              const SizedBox(height: 20),

              // Informations du téléphone
              Text(
                phone.title,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                phone.price,
                style: const TextStyle(fontSize: 20, color: Colors.green),
              ),
              const SizedBox(height: 10),
              Text(
                phone.description,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Text(
                'Condition: ${phone.condition}',
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 20),

              // Informations sur le vendeur
              Row(
                children: [
                  const Icon(Icons.person, size: 40),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        phone.sellerName,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        phone.sellerType,
                        style: const TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Like et proposition de prix
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => IconButton(
                        onPressed: controller.toggleLike,
                        icon: Icon(
                          controller.isLiked.value ? Icons.favorite : Icons.favorite_border,
                          color: controller.isLiked.value ? Colors.red : Colors.grey,
                        ),
                      )),
                  Text(
                    "${phone.totalLikes} likes",
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Champ de proposition de prix
              TextField(
                decoration: InputDecoration(
                  labelText: 'Proposer un prix',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (value) {
                  controller.setProposedPrice(value);
                },
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),

              // Boutons "Passer à l'achat" et "Discuter avec le vendeur"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Logique pour passer à l'achat
                      },
                      icon: const Icon(Icons.shopping_cart),
                      label: const Text("Passer à l'achat"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Logique pour discuter avec le vendeur
                      },
                      icon: const Icon(Icons.chat),
                      label: const Text("Discuter"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
