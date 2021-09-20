import 'package:flutter/material.dart';
import 'package:my_portfolio/layouts/project.dart';
import 'package:my_portfolio/my_portfolio.dart';

class MyProjects extends StatefulWidget {

  late MyPortfolio myPortfolio;
   MyProjects({Key? key,required this.myPortfolio}) : super(key: key);

  @override
  _MyProjectsState createState() => _MyProjectsState(this.myPortfolio);
}


class _MyProjectsState extends State<MyProjects> {

  late MyPortfolio myPortfolio;

  _MyProjectsState(this.myPortfolio);

  void gotToSelectProject(Project selectedPrj){
    setState(() {
      Navigator.push(context, MaterialPageRoute(
          builder: (builderContext) => MyProjectView(selectedProject: selectedPrj )
      ));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment : CrossAxisAlignment.start,

        children: [
          Container(width: double.infinity,
            margin: EdgeInsets.only(bottom: 10),
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
                              title: Text(myPortfolio.getProjects[index].projectName.toString()),
                              subtitle: Text(myPortfolio.getProjects[index].projectSubHeader.toString()),
                              leading: Image.asset(myPortfolio.getImageLocation),
                             onTap: (){(gotToSelectProject(myPortfolio.getProjects[index]));}
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
