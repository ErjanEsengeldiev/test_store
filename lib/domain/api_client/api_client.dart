import 'dart:convert';
import 'dart:io';

import 'package:stores_kg/jsonDecod/category.dart';

class ApiClient {
  final client = HttpClient();

  Future<List<Categories>> getPosts() async {
    final url = Uri.parse(
        'https://test-docs.stores.kg/api/categories?page=1&itemsPerPage=30');
    final request = await client.getUrl(url);
    final response = await request.close();
    final jsonList = await response.transform(utf8.decoder).toList();
    final jsonString = jsonList.join();
    final json = jsonDecode(jsonString) as dynamic;
    final hidraColection = HidraColection.fromJson(json);

    return hidraColection.hydraMember.toList();
  }
}
