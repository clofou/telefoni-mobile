import 'package:flutter/material.dart';

class PosterCard extends StatelessWidget {
  const PosterCard(
      {super.key,
      required this.percentage,
      required this.description,
      this.imageUrl,
      this.posterColor});
  final int percentage;
  final String description;
  final String? imageUrl;
  final Color? posterColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: posterColor,
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$percentage % OFF",
                style: const TextStyle(
                    color: Colors.white, fontFamily: "Poppins", fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 200,
                child: Text(
                  description,
                  style: const TextStyle(
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const BeveledRectangleBorder(
                    side: BorderSide(width: 0.5, color: Colors.white),
                  ),
                  backgroundColor:
                      const Color.fromARGB(0, 255, 193, 7).withOpacity(0),
                ),
                onPressed: () {},
                child: const Text(
                  "Commandez maintenant >",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: imageUrl != null
                ? Image.network(imageUrl!)
                : Image.asset("assets/images/iphone12.png"),
          )
        ],
      ),
    );
  }
}
