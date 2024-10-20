import 'package:flutter/material.dart';
import 'package:telefoni_client/features/client/presentation/Pages/Home/principal.dart';
import 'package:telefoni_client/features/client/presentation/Pages/Shop/boutique_page.dart';
import 'package:telefoni_client/features/client/presentation/Widgets/custom_bottom_navigation_bar.dart';

class Template extends StatelessWidget {
  const Template({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [const BoutiquePage()];
    return Scaffold(
      backgroundColor: const Color(0xFFE0EEDB),
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0),
        leading: Image.asset("assets/images/logo.png"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: const Icon(Icons.precision_manufacturing),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: pages[0],
      ),
    );
  }
}
