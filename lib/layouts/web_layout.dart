import 'package:flutter/material.dart';
import 'package:my_portfolio/layouts/project.dart';
import 'package:my_portfolio/modules/header_module.dart';
import 'package:my_portfolio/modules/my_projects_module.dart';

import '../my_portfolio.dart';

class WebLayout extends StatefulWidget {
  late MyPortfolio myPortfolio;
   WebLayout({Key? key, required this.myPortfolio}) : super(key: key);

  @override
  _WebLayoutState createState() => _WebLayoutState(myPortfolio);
}

class _WebLayoutState extends State<WebLayout> {
  late MyPortfolio myPortfolio;

  _WebLayoutState(this.myPortfolio);


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
      child: Column(
        children: [
          Flexible(flex: 1,
          child: Header(myPortfolio: myPortfolio,)),


        ],
      )




    ); // End of whole COntainer for Web
  }
}
