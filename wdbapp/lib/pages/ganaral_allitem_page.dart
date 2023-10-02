import 'package:flutter/material.dart';

import 'package:wdbapp/pages/web_page.dart';

import 'package:wdbapp/static/all_color.dart';
import 'package:wdbapp/static/all_text.dart';

import '../widgets/costom_card.dart';

// ignore: must_be_immutable
class GanaralAllItemPage extends StatefulWidget {
  String titlel;
  GanaralAllItemPage({super.key, required this.titlel});

  @override
  State<GanaralAllItemPage> createState() => _GanaralAllItemPagePageState();
}

class _GanaralAllItemPagePageState extends State<GanaralAllItemPage> {
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CostomCard(
                  text: AllText.generalBoardText,
                  image: "assets/images/ganaral.png",
                  onTap: () {
                    String url = "https://bteb.gov.bd/";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebViewPage(
                            url: url,
                            text: AllText.generalBoardText,
                          ),
                        ));
                  },
                ),
                CostomCard(
                  text: AllText.hscText,
                  image: "assets/images/ganaral.png",
                  onTap: () {
                    String url = "http://xiclassadmission.gov.bd/";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebViewPage(
                            url: url,
                            text: AllText.hscText,
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
                  image: "assets/images/ganaral.png",
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
