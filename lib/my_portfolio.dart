class MyPortfolio{

  late String _firstName;
  late String _lastName;
  late String _myPosition;
  late String _imageLocation = 'images/blando.jpg'; // temp static
  late List<Project> _projects; // list of Projects

  MyPortfolio( this._firstName,  this._lastName, this._myPosition){ // initializer here the projects

    String longDescription = 'ahsdjkfj;aklsdjgklajsd;klgjkl;adsjgiasdjioajgio;adfshio;uahfiopu;gijopuaerghjouaerhioaerjgioargjio[jiojgiojgijrqriogjioqejrgoijaejgioDMNGILAEJWGKLEWajilogjweIOGJAEIOWjfioWJFOIJWioefjoiwejfioweiofklWEFKLjsl;kfjKLSFJLKjfioEWJOFIJweiofiwJFIOwejoifijEWIOFJIOwejfioJFHAJKDLSGHJASDJLGHAILUSGFHJIUAGREJUIVAHJVLUIAWHFJKAHSJDGHAJKLSDFHLOUASHFOUAERWIOUGIOP89AHJGAhjhaedghklajsdhgjklahsdgjklasdhjkahdsjfhaiosdfjil;asdjfl;kajsd';

    _projects = [
      Project('Project 1 ','images/blando.jpg','project 1 subheader','Project 1' + longDescription),
      Project('Project 2 ','images/blando.jpg','project 2 subheader','Project 2' + longDescription),
      Project('Project 3 ','images/blando.jpg','project 3 subheader','Project 3' + longDescription),
    ];

  }

  //Getters
  String get getFirstName => this._firstName;
  String get getLastName => this._lastName;
  String get getFullName => '${this._firstName}  ${this._lastName}';
  String get getMyPosition => this._myPosition;
  String get getImageLocation => this._imageLocation;
  List<Project> get getProjects => this._projects;

}

class Project{ //add projects class

  late String _projectName;

  String get projectName => _projectName;

  String get projectSubHeader => _projectSubHeader;
  late String _projectSubHeader;
  late String _imageLocation;
  late String _projectDescription;

  Project(this._projectName, this._imageLocation, this._projectSubHeader,this._projectDescription);

  String get imageLocation => _imageLocation;

  String get projectDescription => _projectDescription;
}