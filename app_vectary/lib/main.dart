import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: ''),
    );
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/sp.png",
                    width: 80,
                    height: 80,
                  ),
                  const Text(
                    "Project - XENON-I05",
                    style: TextStyle(fontFamily: 'R-Spectr', fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 45),
              const Text(
                "Reconstruction numérique 3D du visage de Tencent",
                style: TextStyle(fontFamily: 'R-Spectr', fontSize: 18),
              ),
              const SizedBox(height: 35),
              const Text(
                "Les technologies Intel® - Solution de reconstruction numérique 3D du visage grâce aux processeurs Intel® Xeon® Scalable de 3ᵉ génération",
                style: TextStyle(fontFamily: 'Racheto', fontSize: 18),
              ),
              const SizedBox(height: 25),
              const SizedBox(
                height: 400,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl:
                      'https://app.vectary.com/p/4ATUgzfS8orPmI2f9h2NOF',
                ),
              ),
              const SizedBox(height: 25),
              NeumorphicButton(
                onPressed: () {},
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(2)),
                ),
                padding: const EdgeInsets.all(12.0),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 95),
                  child: Text(
                    "Compilation 3D",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
