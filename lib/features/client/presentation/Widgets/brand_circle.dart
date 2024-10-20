import 'package:flutter/material.dart';

class BrandCircle extends StatelessWidget {
  const BrandCircle({super.key, this.imageUrl, required this.brandName});
  final String? imageUrl;
  final String brandName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: imageUrl != null
                  ? NetworkImage(imageUrl!)
                  : const AssetImage("assets/images/samsung_brand.png"),
            ),
          ),
        ),
        Text(
          brandName,
          style: const TextStyle(fontFamily: "Poppins", color: Colors.black),
        ),
      ],
    );
  }
}
