import 'package:flutter/material.dart';
import 'package:stores_kg/domain/api_client/api_client.dart';
import 'package:stores_kg/main_screen/main_screen_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final model = MainScreenModel();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
                onPressed: () {
                  MainScreenModelProvider.read(context)!
                      .model
                      .getCategories();
                  print(MainScreenModelProvider.read(context)
                      ?.model
                      .categgories
                      .length);
                },
                child: Text('relod'))
          ],
          bottom: TabBar(tabs: [
            Tab(child: Text('1')),
            Tab(child: Text('1')),
            Tab(child: Text('1')),
          ]),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: MainScreenModelProvider.whatch(context)!
                  .model
                  .categgories
                  .length,
              itemBuilder: (context, index) {
                return Container(
                  child: Text(
                    MainScreenModelProvider.whatch(context)
                            ?.model
                            .categgories[index]
                            .name ??
                        'eror',
                  ),
                );
              },
            ),
            Text('123'),
            Text('123'),
          ],
        ),
      ),
    );
  }
}

List<Tab> tabsForTabBar = [];
