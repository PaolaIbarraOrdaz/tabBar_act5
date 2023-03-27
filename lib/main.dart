import 'package:flutter/material.dart';
//import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestaña Tab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
} // my app

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //myHomePage

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.amberAccent,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20), // Creates border
                color: Color(0xff070707)),
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.account_circle)),
              Tab(icon: Icon(Icons.hdr_plus)),
              Tab(icon: Icon(Icons.card_giftcard)),
              Tab(icon: Icon(Icons.favorite)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
          title: const Text('Dulcería Alegrías'),
          centerTitle: true,
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.home, size: 350),
            Icon(Icons.account_circle, size: 350),
            Icon(Icons.hdr_plus, size: 350),
            Icon(Icons.card_giftcard, size: 350),
            Icon(Icons.favorite, size: 350),
            Icon(Icons.settings, size: 350),
          ],
        ),
      ),
    );
  } //documentacion
} //myHomePageState
