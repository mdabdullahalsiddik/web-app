import 'package:flutter/material.dart';
import 'package:wdbapp/static/all_color.dart';
import 'package:wdbapp/static/all_icon.dart';
import 'package:wdbapp/static/all_text.dart';

class NoInternetPage extends StatefulWidget {
  const NoInternetPage({super.key});

  @override
  State<NoInternetPage> createState() => _NoInternetPageState();
}

class _NoInternetPageState extends State<NoInternetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColor.whitweColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AllIcon.wifiOffIcon,
            AllText.noInternetText
          ],
        ),
      ),
    );
  }
}