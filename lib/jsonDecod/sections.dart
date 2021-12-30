import 'package:flutter/material.dart';
import 'package:stores_kg/jsonDecod/products.dart';


class Sections extends StatelessWidget {
  final String? imageUrl;
  final int id;
  final int eeCatId;
  final String name;
  final String slug;
  final List<Products> categories;

  const Sections({
    required this.name,
    required this.categories,
    required this.eeCatId,
    required this.id,
    required this.slug,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  factory Sections.fromJson(Map<String, dynamic> json) {
    return Sections(
      imageUrl: json['@imageUrl'],
      id: json['id'],
      eeCatId: json['eeCatId'],
      name: json['name'],
      slug: json['slug'],
      categories: (json['categories'] as List<dynamic>)
          .map((dynamic e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: Column(
        children: [
          Card(
            color: Colors.white,
            child: InkWell(
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: ((context) => Products(name: name))));
              },
              child: ListTile(
                leading: Icon(Icons.image),
                title: Text(name),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<List<Sections>> sections = [];
