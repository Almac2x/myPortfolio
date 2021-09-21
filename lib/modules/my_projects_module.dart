import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/modules/project.dart';
import 'package:my_portfolio/my_portfolio.dart';

class MyProjects extends StatefulWidget {

  late MyPortfolio myPortfolio;
  late Function? webFunction;
   MyProjects({Key? key,required this.myPortfolio,required this.webFunction}) : super(key: key);

  @override
  _MyProjectsState createState() => _MyProjectsState(this.myPortfolio,this.webFunction);
}

class _MyProjectsState extends State<MyProjects> {
  late Function? webFunction;
  late MyPortfolio myPortfolio;

  _MyProjectsState(this.myPortfolio,this.webFunction);

  void gotToSelectProjectM(Project selectedPrj){
    setState(() {
      Navigator.push(context, MaterialPageRoute(
          builder: (builderContext) => MyProjectView(selectedProject: selectedPrj )
      ));
    });

  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
   // double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,


      child: Column(
        crossAxisAlignment : CrossAxisAlignment.start,

        children: [
          Container(width: width, // dont use double.infinity breaks the system
            margin: EdgeInsets.only(bottom: 10), // margin for top between My Project
            alignment: Alignment.topLeft, // Makes my Project go left
            child: FittedBox( fit: BoxFit.scaleDown,
              child: Text('My Projects', style: TextStyle(fontSize: 36),)
            ),
          ),

       SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    ListView.builder(
                        physics: PageScrollPhysics(),
                        shrinkWrap: true,
                        addAutomaticKeepAlives: false,
                        itemCount: myPortfolio.getProjects.length,
                        itemBuilder: (context,index){
                          return  Column(
                            children:[ Card(
                              child: ListTile(
                                tileColor: Colors.black26,
                                title: Text(myPortfolio.getProjects[index].projectName.toString()),
                                subtitle: Text(myPortfolio.getProjects[index].projectSubHeader.toString()),
                                leading: Image.asset(myPortfolio.getImageLocation),
                               onTap:
                                    (){
                                      (kIsWeb)?webFunction!(myPortfolio.getProjects[index]):
                                  (gotToSelectProjectM(myPortfolio.getProjects[index]));
                                }
                              ),
                            ),
                              if (index!= (myPortfolio.getProjects.length-1))
                                Divider(
                                  color: Colors.black,
                                  height: 10,
                                  thickness: 5,
                                  indent: 20,endIndent: 20,
                                ),
                          ]);
                        })
                  ],
                ),
              ),

        ],
      ),

    );
  }
}
