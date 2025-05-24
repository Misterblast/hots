import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hots/home_screen.dart';
import 'package:hots/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPage = 0;
  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    InAppWebView(
      initialUrlRequest: URLRequest(
        url: WebUri("https://hl.go-assessment.link/info"),
      ),
      onWebViewCreated: (controller) {},
    ),
    InAppWebView(
      initialUrlRequest: URLRequest(
        url: WebUri("https://hl.go-assessment.link/tutorial"),
      ),
      onWebViewCreated: (controller) {},
    ),
    InAppWebView(
      initialUrlRequest: URLRequest(
        url: WebUri("https://hl.go-assessment.link/penyusun"),
      ),
      onWebViewCreated: (controller) {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: _currentPage, children: _pages),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.blue[900],
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_device_info),
            label: 'Informasi',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Tutorial'),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'Penulis'),
        ],
        currentIndex: _currentPage,
        onTap: _onPageChanged,
      ),
    );
  }
}
