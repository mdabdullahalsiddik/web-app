import 'package:flutter/material.dart';
import 'package:wdbapp/pages/home_page.dart';
import 'package:loading_indicator/loading_indicator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Future welcome() async {
    Future.delayed(Duration(seconds: 5)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePages(),
        )));
  }

  @override
  void initState() {
    welcome();
    super.initState();
  }

  List<Color> lodingColor = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: LoadingIndicator(
            indicatorType: Indicator.ballRotateChase,
            // strokeWidth: 1.0,
            colors: lodingColor,
          ),
        ),
      ),
    );
  }
}
