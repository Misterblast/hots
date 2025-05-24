import 'package:flutter/material.dart';
import 'package:hots/webview_screen.dart';

class AboutHotsScreen extends StatelessWidget {
  AboutHotsScreen({super.key});

  final List<Map<String, dynamic>> _items = [
    {
      "asset": "assets/images/bab_satu.png",
      "title": "Pengertian HOTS",
      "webview": "https://hl.go-assessment.link/menu/pengertian-hots",
    },
    {
      "asset": "assets/images/bab_dua.png",
      "title": "Teori HOTS",
      "webview": "https://hl.go-assessment.link/menu/teori-hots",
    },
    {
      "asset": "assets/images/taksonomibloom.png",
      "title": "Taksonomi Bloom",
      "webview": "https://hl.go-assessment.link/menu/taksonomi-bloom",
    },
    {
      "asset": "assets/images/bab_empat.png",
      "title": "Penilaian KBTT",
      "webview": "https://hl.go-assessment.link/menu/penilaian-kbt",
    },
    {
      "asset": "assets/images/bab_lima.png",
      "title": "Bagaimana Melatih HOTS",
      "webview": "https://hl.go-assessment.link/menu/melatih-hots",
    },
  ];

  @override
  Widget build(BuildContext context) {
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
                  Image.asset("assets/images/tentang_hots.png", scale: 10),
                  const Text(
                    'Tentang HOTS',
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
