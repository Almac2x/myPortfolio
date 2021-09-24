import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../my_portfolio.dart';


class MyProjectView extends StatefulWidget {
   late Project? selectedProject;

   MyProjectView({Key? key, required this.selectedProject}) : super(key: key);

  @override
  _MyProjectViewState createState() => _MyProjectViewState();
}

class _MyProjectViewState extends State<MyProjectView> {

  @override
  Widget build(BuildContext context) {

    return (widget.selectedProject ==null)?FittedBox(fit: BoxFit.cover,child: Text('Please Select A Project First'),): Scaffold(
      appBar: (kIsWeb)?null:AppBar(
        title: (kIsWeb)?null: Text(widget.selectedProject!.projectName),

      ),
      body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10),

            child: Column(mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                if(kIsWeb) // for web only title
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: Container(margin: EdgeInsets.only(bottom: 10),alignment: Alignment.topLeft,child: // fix it to me more flexible
                      FittedBox(fit: BoxFit.contain,child: Text('${widget.selectedProject!.projectName.toString()}',style: TextStyle(fontSize: 48),))),
                    ),
                  ],
                ),


                Flexible( flex: 1,
                  child: Container(child: Image.asset(widget.selectedProject!.imageLocation),
                      constraints:  BoxConstraints(
                    minHeight: 300,
                      )

                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: (kIsWeb)?20:10), // padding between image and the description
                    child: SingleChildScrollView(
                        child:  Text('${widget.selectedProject!.projectDescription}',style: TextStyle(fontSize:  18),)),
                  ),
                ),
              ],

            ),


          ),
        ),
    );
  }
}
