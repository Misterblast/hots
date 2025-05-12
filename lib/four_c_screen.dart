import 'package:flutter/material.dart';
import 'package:unesa_hots/webview_screen.dart';

class FourCScreen extends StatelessWidget {
  FourCScreen({super.key});
  final List<Map<String, dynamic>> _items = [
    {
      "asset": "assets/images/bab_satu.png",
      "title": "Pengertian",
      "webview":
          "https://hotlinks-learn.blogspot.com/2020/02/pengertian-4c.html?m=1",
    },
    {
      "asset": "assets/images/bab_dua.png",
      "title": "Critical Thinking Skills",
      "webview":
          "https://hotlinks-learn.blogspot.com/2020/02/critical-thinking-skill-1.html?m=1",
    },
    {
      "asset": "assets/images/bab_tiga.png",
      "title": "Creative Thinking Skills",
      "webview":
          "https://hotlinks-learn.blogspot.com/2020/02/critical-thinking-skill-2.html?m=1",
    },
    {
      "asset": "assets/images/collab.png",
      "title": "Communication Skills",
      "webview":
          "https://hotlinks-learn.blogspot.com/2020/02/communication-skill.html?m=1",
    },
    {
      "asset": "assets/images/bab_lima.png",
      "title": "Collaboration Skills",
      "webview":
          "https://hotlinks-learn.blogspot.com/2020/02/collaboration-skill.html?m=1",
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
                  Image.asset("assets/images/pembelajaran_hots.png", scale: 10),
                  const Text(
                    '4C',
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
