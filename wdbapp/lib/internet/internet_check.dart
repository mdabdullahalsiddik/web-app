import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:wdbapp/internet/no_internet_page.dart';
import 'package:wdbapp/pages/welcome_page.dart';
import 'package:wdbapp/static/all_color.dart';

class InternetCheck extends StatefulWidget {
  const InternetCheck({super.key});

  @override
  State<InternetCheck> createState() => _InternetCheckState();
}

class _InternetCheckState extends State<InternetCheck> {
  StreamSubscription? subscription;
  @override
  void initState() {
    subscription = Connectivity().onConnectivityChanged.listen((event) {
      checkConnection();
    });
    checkConnection();
    super.initState();
  }

   @override
  void dispose() {
    subscription!.cancel();
    super.dispose();
  }


  Future checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomePage(),
          ));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NoInternetPage(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColor.whitweColor,
    );
  }
}
