import 'package:flutter/material.dart';
import 'package:stores_kg/json_decode/products.dart';
import 'package:stores_kg/screens/product_screen.dart';

class ProductsScreen extends StatelessWidget {
  final List<Products> products;
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
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ProductScreen(name: products[index].name)));
              },
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
