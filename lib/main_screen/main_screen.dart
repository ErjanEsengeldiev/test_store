import 'package:flutter/material.dart';
import 'package:stores_kg/main_screen/main_screen_model.dart';
import 'package:stores_kg/section_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    MainScreenModelProvider.read(context)!.model.getCategories();
    super.initState();
  }

  final model = MainScreenModel();

  @override
  Widget build(BuildContext context) {
    final categorys =
        MainScreenModelProvider.whatch(context)!.model.categgories;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: categorys.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SectionScreen(
                          sections: categorys[index].categories,)));
                },
                child: Text(
                  MainScreenModelProvider.whatch(context)
                          ?.model
                          .categgories[index]
                          .name ??
                      'eror',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

List<Tab> tabsForTabBar = [];
