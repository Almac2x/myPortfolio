import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../my_portfolio.dart';


class MyProjectView extends StatelessWidget {
   late Project? selectedProject;

   MyProjectView({Key? key, required this.selectedProject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (selectedProject ==null)?FittedBox(fit: BoxFit.cover,child: Text('Please Select A Project First'),):SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20,right: 20,top: 20),

        child: Column(mainAxisSize: MainAxisSize.max,
          children: [
            Container(child: Image.asset(selectedProject!.imageLocation),
                constraints:  BoxConstraints(
              minHeight: 300,
                )

            ),

            Expanded( flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: (kIsWeb)?20:10), // padding between image and the description
                child: SingleChildScrollView(
                    child:  Text('${selectedProject!.projectDescription}',style: TextStyle(fontSize:  18),)),
              ),
            ),
          ],

        ),


      ),
    );
  }
}
