import 'package:flutter/material.dart';
import 'package:hots/hots_learning_page.dart';
import 'package:hots/hots_screen.dart';
import 'package:hots/webview_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_final_fields
    List<Map<String, dynamic>> _items = [
      {
        "asset": "assets/images/tentang_hots.png",
        "title": "HOTS",
        "onPress":
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HotsScreen()),
            ),
      },
      {
        "asset": "assets/images/pembelajaran_hots.png",
        "title": "Pembelajaran HOTS",
        "onPress":
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HotsLearningPage()),
            ),
      },
      {
        "asset": "assets/images/quiz.png",
        "title": "Review",
        "onPress":
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => const WebviewScreen(
                      url:
                          "https://docs.google.com/forms/d/e/1FAIpQLSc2_m0XW1EG1jSnyNS-AZCtGt2MMuvgiEN60SjAeHqvYuv6JQ/viewform",
                    ),
              ),
            ),
      },
      {
        "asset": "assets/images/tentang_hots.png",
        "title": "Tugas",
        "onPress":
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => const WebviewScreen(
                      url:
                          "https://docs.google.com/forms/d/e/1FAIpQLSce9rJ0HDgMmqvV9Z0byRZBxc6FmqV6pRAZQQGUsuGTRX7QLA/viewform?usp=dialog",
                    ),
              ),
            ),
      },
    ];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[900]!, Colors.blue[700]!, Colors.blue[500]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Selamat datang di HOTs Links',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                spacing: 20,
                children:
                    _items
                        .map(
                          (item) => InkWell(
                            onTap: item['onPress'],
                            child: Column(
                              spacing: 12,
                              children: [
                                Hero(
                                  tag: item['title'],
                                  child: Image.asset(item['asset'], scale: 8),
                                ),
                                Text(
                                  item['title'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
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
    );
  }
}
