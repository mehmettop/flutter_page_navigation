import 'package:flutter/material.dart';
import 'package:flutter_page_navigation/auxiliaries/cmanager.dart';
import 'package:flutter_page_navigation/ui/pages/first_page.dart';
import 'package:flutter_page_navigation/ui/pages/second_page.dart';
import 'package:flutter_page_navigation/ui/pages/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Page Navigation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.title),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              //-- todo
              return;
            },
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {
              //-- todo
              return;
            },
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text("First Page"),
              onTap: () => {CManager().closeDrawer(context), CManager().navigateToFirstPage(true)},
            ),
            ListTile(
              title: const Text("Second Page"),
              onTap: () => {CManager().closeDrawer(context), CManager().navigateToSecondPage(true)},
            ),
            ListTile(
              title: const Text("Third Page"),
              onTap: () => {CManager().closeDrawer(context), CManager().navigateToThirdPage(true)},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    CManager().navigateToFirstPage(true);
                  },
                  child: const Text("First Page"),
                ),
                ElevatedButton(
                  onPressed: () {
                    CManager().navigateToSecondPage(true);
                  },
                  child: const Text("Second Page"),
                ),
                ElevatedButton(
                  onPressed: () {
                    CManager().navigateToThirdPage(true);
                  },
                  child: const Text("Third Page"),
                )
              ],
            ),
          ),
          Flexible(
            child: PageView(
              controller: CManager().pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [WFirstPage(), WSecondPage(), WThirdPage()],
            ),
          )
        ],
      ),
    );
  }
}
