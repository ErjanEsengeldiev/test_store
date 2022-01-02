import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  final products;
  const ProductsScreen({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                products[index].name,
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
