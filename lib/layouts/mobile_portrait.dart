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
    return Container(

        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),

        ),
      margin: EdgeInsets.only(top: 20,left: 30, right: 30), // margins for container

      child: Column(
        children: [
          Header(myPortfolio: myPortfolio,),     // Header MOdule for Your Name
           MyProjects(myPortfolio: myPortfolio,)  //add here My Projects Module
          //add here Name module
        ],

      ),
    );
  }
}



