import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_change/theme_change.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ThemeMaterialAppGetX(
      debugShowCheckedModeBanner: false,
      title: 'GetX Demo theme_change',
      home: MyHomePage(title: 'GetX Demo theme_change'),
    )
      );
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ThemeObserver(child: ThemeChange.themeController.pTheme.value
                ? Text(
              "This is an example Dark Theme",
              style: Theme.of(context).textTheme.headlineMedium,
            )
                : Text(
              "This is an example Light Theme",
              style: Theme.of(context).textTheme.headlineMedium,
            ))

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ThemeChange.themeController.setTheme();
        },
        child: ThemeObserver(
         child:   Icon(ThemeChange.themeController.themeMode.value),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
