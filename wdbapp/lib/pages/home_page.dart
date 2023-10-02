import 'package:flutter/material.dart';
import 'package:wdbapp/pages/bteb_allitem_page.dart';
import 'package:wdbapp/pages/ganaral_allitem_page.dart';
import 'package:wdbapp/static/all_color.dart';
import 'package:wdbapp/static/all_text.dart';

import '../widgets/costom_card.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AllColor.appbarColor),
        backgroundColor: AllColor.appbarColor,
        title: AllText.appbarText,
        titleSpacing: -30,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CostomCard(
                  text: AllText.generalText,
                  image: "assets/images/ganaral.png",
                  onTap: () {
                    String url = "http://www.educationboard.gov.bd/";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GanaralAllItemPage(
                            titlel: AllText.generalText,
                          ),
                        ));
                  },
                ),
                CostomCard(
                  text: AllText.betbText,
                  image: "assets/images/bteb.png",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              BtebAllItemPage(titlel: AllText.betbText),
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
