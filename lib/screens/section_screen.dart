import 'package:flutter/material.dart';
import 'package:stores_kg/json_decode/sections.dart';
import 'package:stores_kg/screens/products_screen.dart';

class SectionScreen extends StatelessWidget {
  final List<Sections> sections;

  const SectionScreen({
    required this.sections,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: sections.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ProductsScreen(products: sections[index].categories)));
              },
              child: Text(
                sections[index].name,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
      ),
    );
  }
}
