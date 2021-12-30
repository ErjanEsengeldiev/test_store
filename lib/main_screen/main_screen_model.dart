import 'package:flutter/material.dart';
import 'package:stores_kg/category.dart';
import 'package:stores_kg/domain/api_client/api_client.dart';

class MainScreenModel extends ChangeNotifier {
  final apiClient = ApiClient();
  var categgories = <Categories>[];

  Future<void> getCategories() async {
    final categoriesFromApi = await apiClient.getPosts();
    categgories += categoriesFromApi;
    
    notifyListeners();
  }
}

class MainScreenModelProvider extends InheritedNotifier {
  final MainScreenModel model;
  const MainScreenModelProvider({
    required this.model,
    required Widget child,
  }) : super(child: child, notifier: model);

  static MainScreenModelProvider? whatch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<MainScreenModelProvider>();
  }

  static MainScreenModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<MainScreenModelProvider>()
        ?.widget;
    return widget is MainScreenModelProvider ? widget : null;
  }
}
