

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/my_portfolio.dart';

class Header extends StatelessWidget {
  final MyPortfolio myPortfolio;

  const Header({Key? key, required this.myPortfolio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late double imageWidth = (!kIsWeb)? 80 : 220 ; //double check please for mobile true or false
    late double imageHeight = (!kIsWeb)? 80 : 220;

    late double fontSizeYourName = (!kIsWeb)? 30 : 48;
    late double fontSizePositon = (!kIsWeb)? 20 : 38;
    //make text font a variable for name and position



    return Container(

      child: Column( // Header + Divider

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start, //
            textDirection: (kIsWeb)?TextDirection.rtl :TextDirection.ltr , // here we can change where we ca nstart for web
            // here change it for web alignment to end

            children: [
              Image.asset(myPortfolio.getImageLocation, height: imageHeight,width: imageWidth,),// add image here

               Expanded(// should be only insize a column or a row or flex ata; use t

                 child: Padding(
                   padding: EdgeInsets.only(
                       left:(kIsWeb)?0:10,
                        right:(kIsWeb)?20:0),
                   child: Column(
                        mainAxisAlignment: (kIsWeb)?MainAxisAlignment.end : MainAxisAlignment.start, // add here
                        crossAxisAlignment: (kIsWeb)?CrossAxisAlignment.end : CrossAxisAlignment.start, // add here
                        children: [
                          FittedBox(fit: BoxFit.contain,child: Text(myPortfolio.getFullName,style: TextStyle(fontSize:fontSizeYourName),)), // text font will depend for web

                     if(kIsWeb)
                       Divider(

                         color: Colors.black,
                         height: 5, // added 5 heigth because J is being covered by the divier
                         thickness: 5,
                         indent:(MediaQuery.of(context).size.width / 100) * (34.54/4)  , // set a minimum

                       ),

                          FittedBox(fit: BoxFit.contain, child: Text(myPortfolio.getMyPosition,style: TextStyle(fontSize:fontSizePositon) )),// text font will depend for web

                        ],
              ),
                 ),
                   ),

              if(kIsWeb) // My Portfolio for web only
                     Expanded( child: IntrinsicHeight(child: Container(height: 220,alignment:Alignment.topLeft,child: FittedBox(fit: BoxFit.fitHeight,child: Text('My Portfolio',style: TextStyle(fontSize: 60),))))),


            ],),
           Divider(

            color: Colors.black,
            height: (kIsWeb)?30:10,
            thickness: 5,
             indent:(kIsWeb)?  (MediaQuery.of(context).size.width / 100) * (34.54/4): 0,
             endIndent: (kIsWeb)? (MediaQuery.of(context).size.width / 100) * (34.54/4): 0,
          )



        ],
      ), //End Row

    );
  }
}
