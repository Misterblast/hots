import 'package:flutter/material.dart';
import 'package:unesa_hots/about_hots.dart';
import 'package:unesa_hots/four_c_screen.dart';

class HotsScreen extends StatelessWidget {
  const HotsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> _items = [
      {
        "asset": "assets/images/quiz.png",
        "title": "Tentang HOTS",
        "onPress":
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutHotsScreen()),
            ),
      },
      {
        "asset": "assets/images/pembelajaran_hots.png",
        "title": "4C",
        "onPress":
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FourCScreen()),
            ),
      },
    ];
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue[900]!,
                    Colors.blue[700]!,
                    Colors.blue[500]!,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Hero(
                        tag: "HOTS",
                        child: Image.asset(
                          'assets/images/tentang_hots.png',
                          scale: 7,
                        ),
                      ),
                      const Text(
                        'HOTS Links',
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
                                      Image.asset(item['asset'], scale: 8),
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
          ],
        ),
      ),
    );
  }
}
