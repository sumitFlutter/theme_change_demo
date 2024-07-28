import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_change/theme_change.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      ThemeChange.themeController.getTheme();
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeChange.lightTheme,
        darkTheme: ThemeChange.darkTheme,
        themeMode: ThemeChange.themeController.mode.value,
        home: const MyHomePage(title: 'theme_change Package Demo'),
      );
    });
  }
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
            Obx(() => ThemeChange.themeController.theme.value
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
        child: Obx(
          () => Icon(ThemeChange.themeController.themeMode.value),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
