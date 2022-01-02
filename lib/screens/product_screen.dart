import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final String name;
  const ProductScreen({
    Key? key,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
    );
  }
}
