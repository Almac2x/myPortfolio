import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../my_portfolio.dart';


class MyProjectView extends StatelessWidget {
   late Project selectedProject;

   MyProjectView({Key? key, required this.selectedProject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(left: 20,right: 20,top: 20),

      child: Column(
        children: [
          ConstrainedBox(child: Image.asset(selectedProject.imageLocation),
              constraints:  BoxConstraints(
            minHeight: 300,)
             
          ),

          Text('${selectedProject.projectDescription}',style: TextStyle(fontSize:  18),),
        ],

      ),


    );
  }
}
