import 'package:flutter/material.dart';
import 'package:my_portfolio/modules/header_module.dart';
import 'package:my_portfolio/modules/my_projects_module.dart';
import 'package:my_portfolio/my_portfolio.dart';

class MobileP extends StatefulWidget {

  final MyPortfolio myPortfolio;
  const MobileP({Key? key, required this.myPortfolio}) : super(key: key);

  @override
  _MobilePState createState() => _MobilePState(myPortfolio);
}

class _MobilePState extends State<MobileP> {

   MyPortfolio myPortfolio;
  _MobilePState(this.myPortfolio); // constructor


  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
        width: width,

       /* decoration: BoxDecoration(
            border: Border.all(color: Colors.black),

        ),*/  //Just a border to look at my main contaier
      margin: EdgeInsets.only(top: 20,left: 30, right: 30), // margins for container

      child: Column(
        children: [
          Header(myPortfolio: myPortfolio,),     // Header Module for Your Name
          Expanded(flex: 1,child: SingleChildScrollView(child: MyProjects(myPortfolio: myPortfolio,webFunction: null,)))  //add here My Projects Module
          //add here Name module
        ],

      ),
    );
  }
}



