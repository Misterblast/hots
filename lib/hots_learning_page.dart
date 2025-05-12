import 'package:flutter/material.dart';
import 'package:unesa_hots/webview_screen.dart';

class HotsLearningPage extends StatelessWidget {
  const HotsLearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> _items = [
      {
        "asset": "assets/images/bab_satu.png",
        "title": "Bab 1 : PBM",
        "webview":
            "https://hotlinks-learn.blogspot.com/2019/12/pembelajaran-berbasis-masalah.html?m=1",
      },
      {
        "asset": "assets/images/bab_dua.png",
        "title": "Bab 2 : Inkuiri",
        "webview":
            "https://hotlinks-learn.blogspot.com/2019/12/pembelajaran-inkuiri.html?m=1",
      },
      {
        "asset": "assets/images/bab_tiga.png",
        "title": "Bab 3 : CAM",
        "webview":
            "https://hotlinks-learn.blogspot.com/2019/12/concept-attainment-model.html?m=1",
      },
      {
        "asset": "assets/images/bab_empat.png",
        "title": "Bab 4 : PJBL",
        "webview":
            "https://hotlinks-learn.blogspot.com/2019/12/project-based-learning.html?m=1",
      },
      {
        "asset": "assets/images/bab_lima.png",
        "title": "Bab 5 : Jigsaw",
        "webview":
            "https://hotlinks-learn.blogspot.com/2019/12/pembelajaran-kooperatif.html?m=1",
      },
      {
        "asset": "assets/images/bab_enam.png",
        "title": "Bab 6 : Kooperatif (TNHT)",
        "webview":
            "https://hotlinks-learn.blogspot.com/2021/03/pembelajaran-kooperatif-tipe-group.html?m=1",
      },
      {
        "asset": "assets/images/gi_button.png",
        "title": "Bab 7 : Kooperatif (GI)",
        "webview":
            "https://hotlinks-learn.blogspot.com/2021/03/pembelajaran-kooperatif-tipe-group.html?m=1",
      },
      {
        "asset": "assets/images/bab_delapan.png",
        "title": "Bab 8 : Kooperatif (TPS)",
        "webview":
            "https://hotlinks-learn.blogspot.com/2019/12/pembelajaran-kooperatif-tipe-tps.html?m=1",
      },
    ];
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/pembelajaran_hots.png", scale: 10),
                  const Text(
                    'Pembelajaran HOTS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(20),
                constraints: BoxConstraints(
                  minHeight: MediaQuery.sizeOf(context).height * 0.8,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  spacing: 20,
                  children:
                      _items
                          .map(
                            (item) => InkWell(
                              onTap:
                                  () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => WebviewScreen(
                                            url: item['webview'],
                                          ),
                                    ),
                                  ),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Image.asset(item['asset']),
                                  Text(
                                    item['title'],
                                    style: const TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
