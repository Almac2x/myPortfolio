
import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/layouts/mobile_landscape.dart';
import 'package:my_portfolio/layouts/mobile_portrait.dart';
import 'package:my_portfolio/modules/header_module.dart';
import 'my_portfolio.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final String imageLocTemp = 'https://cdn.discordapp.com/attachments/885885847814144073/886980836572942346/IMG_20190319_092606.png';
  final MyPortfolio myPortfolio = MyPortfolio('Alejandro', 'Blando', 'Software Engineer Trainee',); // initialize portfolio

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(

        ),

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My Portfolio',myPortfolio: myPortfolio,),
    );
  }
}

class MyHomePage extends StatefulWidget {

  final String title;
  final MyPortfolio myPortfolio;
  MyHomePage({Key? key, required this.title, required this.myPortfolio}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState(myPortfolio,title);

}

class MyAppBar extends AppBar{

}

class _MyHomePageState extends State<MyHomePage> {

  final MyPortfolio myPortfolio;
   String title;

  _MyHomePageState(this.myPortfolio,this.title); // constructor

  @override
  Widget build(BuildContext context) {
    bool isLandScaped = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: (!kIsWeb)?null:(isLandScaped)?null:AppBar( // edit this for
        title: Text(title),
      ),
      body: (true)?MobileP(myPortfolio: myPortfolio,): Container(color: Colors.red,)  // here add the layouts for the program // as of now mobile portrait muna


    );
  }
}
