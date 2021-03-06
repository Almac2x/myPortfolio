import 'package:flutter/material.dart';
import 'package:my_portfolio/modules/project.dart';
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
  late Project? selectedProject;

  _WebLayoutState(this.myPortfolio);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   selectedProject = null;

  }

  void selectProjectW(Project projectSelected){ // function for web



    setState(() {
      selectedProject = projectSelected;
    });

  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    bool isSizeFit(){

      if(height < 1000 && width < 1000 || width < 650 || height < 750 )
        return true;

        return false;
    }
    return (isSizeFit()) ? Container(color: Colors.black,width: width,height: height,child: FittedBox(fit: BoxFit.contain,child: Text('Expand to View',style: TextStyle(color: Colors.white),))):Container( // outer container
      height: height,
      width: width,
      margin: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
      child: Column(
        children: [

          Header(myPortfolio: myPortfolio,),
          Expanded(flex: 1,
            child: Container(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Expanded(flex: 1,child: Column(children:[ Expanded(flex: 1,child: SingleChildScrollView(child: MyProjects(myPortfolio: myPortfolio,webFunction: selectProjectW)))])),
                  VerticalDivider(
                    color: Colors.black,
                    width: 20,
                    thickness: 5,
                    indent: 20,endIndent: 20,
                  ),
                  Expanded(flex: 3,child: MyProjectView(selectedProject: selectedProject,),) // web view is not scrollable mobile is
                ],
              ),
              
            ),
          )


        ],
      )




    ); // End of whole COntainer for Web
  }
}
