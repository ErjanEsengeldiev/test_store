import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final String? imageUrl;
  final int id;
  final int eeCatId;
  final String name;
  final String slug;
  const Products({
    required this.name,
    required this.eeCatId,
    required this.id,
    required this.slug,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      imageUrl: json['@imageUrl'],
      id: json['id'],
      eeCatId: json['eeCatId'],
      name: json['name'],
      slug: json['slug'],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: ListView.builder(
        itemCount: lidtOfproduct.length,
        itemBuilder: (context, index) => Product(
          name: name,
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  final String name;
  const Product({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Center(child: Text(name)),
      ),
    );
  }
}

List<Products> lidtOfproduct = [];
