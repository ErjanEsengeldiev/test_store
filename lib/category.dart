import 'package:flutter/material.dart';
import 'package:stores_kg/sections.dart';

class Categories extends StatelessWidget {
  final String type;
  final int id;
  final int eeCatId;
  final String name;
  final String slug;
  final List<Sections> categories;
  final String globalId;

  const Categories({
    required this.name,
    required this.categories,
    required this.eeCatId,
    required this.id,
    required this.slug,
    required this.type,
    required this.globalId,
    Key? key,
  }) : super(key: key);

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      type: json['@type'],
      globalId: json['@id'] as String,
      id: json['id'],
      eeCatId: json ['eeCatId'],
      name: json ['name'],
      slug: json ['slug'],
      categories:(json['categories'] as List<dynamic>)
          .map((dynamic e) => Sections.fromJson(e as Map<String, dynamic>))
          .toList(),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Tab(
      text: name,
    );
  }
}

class HidraColection {
  final String context;
  final String id;
  final String type;
  final List<Categories> hydraMember;

  HidraColection({
    required this.context,
    required this.id,
    required this.type,
    required this.hydraMember,
  });

  factory HidraColection.fromJson(Map<dynamic, dynamic> json) {
    return HidraColection(
      context: json['@context'] as String,
      id: json['@id'] as String,
      type: json['@type'] as String,
      hydraMember:(json['hydra:member'] as List<dynamic>)
          .map((dynamic e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
      
    );
  }
}
