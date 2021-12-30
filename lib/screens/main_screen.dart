import 'package:flutter/material.dart';
import 'main_screen_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final model = MainScreenModel();

  @override
  void initState() {
    MainScreenModelProvider.read(context)!.model.getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: ElevatedButton(
              onPressed: () {
                MainScreenModelProvider.read(context)!.model.getCategories();
                print(MainScreenModelProvider.read(context)!
                    .model
                    .categgories
                    .length);
              },
              child: const Text('Reload')),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount:
              MainScreenModelProvider.whatch(context)!.model.categgories.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){},
              child: Card(
                color: Colors.white30,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    MainScreenModelProvider.whatch(context)!
                        .model
                        .categgories[index]
                        .name,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
