import 'package:flutter/material.dart';

import 'package:wdbapp/pages/web_page.dart';

import 'package:wdbapp/static/all_color.dart';
import 'package:wdbapp/static/all_text.dart';

import '../widgets/costom_card.dart';

// ignore: must_be_immutable
class BtebAllItemPage extends StatefulWidget {
  String titlel;
  BtebAllItemPage({super.key, required this.titlel});

  @override
  State<BtebAllItemPage> createState() => _BtebAllItemPageState();
}

class _BtebAllItemPageState extends State<BtebAllItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColor.appbarColor,
        title: Text(widget.titlel),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CostomCard(
                  text: AllText.betbBoardText,
                  image: "assets/images/bteb.png",
                  onTap: () {
                    String url = "https://bteb.gov.bd/";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebViewPage(
                            url: url,
                            text: AllText.betbBoardText,
                          ),
                        ));
                  },
                ),
                CostomCard(
                  text: AllText.betbAdmissionText,
                  image: "assets/images/bteb.png",
                  onTap: () {
                    String url = "http://btebadmission.gov.bd/website/";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebViewPage(
                            url: url,
                            text: AllText.betbAdmissionText,
                          ),
                        ));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CostomCard(
                  text: AllText.resultText,
                  image: "assets/images/bteb.png",
                  onTap: () {
                    String url = "http://www.educationboardresults.gov.bd/";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebViewPage(
                            url: url,
                            text: AllText.resultText,
                          ),
                        ));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
