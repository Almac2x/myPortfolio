

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/my_portfolio.dart';

class Header extends StatelessWidget {
  final MyPortfolio myPortfolio;

  const Header({Key? key, required this.myPortfolio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late double imageWidth = (kIsWeb)? 80 : 220 ;
    late double imageHeight = (kIsWeb)? 80 : 220;
    //make text font a variable for name and position

    return Container(

      child: Column( // Header + Divider

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.ltr , // here we can change where we ca nstart for web
            // here change it for web alignment to end
            children: [
              Image.asset(myPortfolio.getImageLocation, height: imageHeight,width: imageWidth,),// add image here
               Expanded(// should be only insize a column or a row or flex ata; use t

                 child: Padding(
                   padding: EdgeInsets.only(left:10 ),
                   child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(fit: BoxFit.contain,child: Text(myPortfolio.getFullName,style: TextStyle(fontSize:30),)), // text font will depend for web
                          FittedBox(fit: BoxFit.contain, child: Text(myPortfolio.getMyPosition,style: TextStyle(fontSize:20) )),// text font will depend for web

                        ],
              ),
                 ),
                   ),

            ],

          ),
           Divider(
            color: Colors.black,
            height: 10,
            thickness: 5,
             indent: 20,endIndent: 20,
          )



        ],
      ), //End Row

    );
  }
}
