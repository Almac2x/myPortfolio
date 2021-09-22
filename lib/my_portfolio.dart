class MyPortfolio{

  late String _firstName;
  late String _lastName;
  late String _myPosition;
  late String _imageLocation = 'images/blando.jpg'; // temp static
  late List<Project> _projects; // list of Projects

  MyPortfolio( this._firstName,  this._lastName, this._myPosition){ // initializer here the projects

    String CSGODescp = ''
        'Counter-Strike: Global Offensive (CS:GO) is a multiplayer first-person shooter developed by Valve and Hidden Path Entertainment. It is the fourth game in the Counter-Strike series. Developed for over two years, Global Offensive was released for Windows, macOS, Xbox 360, and PlayStation 3 in August 2012, and for Linux in 2014. Valve still regularly updates the game, both with smaller balancing patches and larger content additions.'
        'The game pits two teams, Terrorists and Counter-Terrorists, against each other in different objective-based game modes. The most common game modes involve the Terrorists planting a bomb while Counter-Terrorists attempt to stop them, or Counter-Terrorists attempting to rescue hostages that the Terrorists have captured. There are eight official game modes, all of which have distinct characteristics specific to that mode. The game also has matchmaking support that allows players to play on dedicated Valve servers, in addition to community-hosted servers with custom maps and game modes. A battle-royale game-mode, "Danger Zone", was introduced in December 2018.';
    String ValorantDescp = 'Valorant (stylized as VALORANT) is a free-to-play first-person hero shooter developed and published by Riot Games, for Microsoft Windows. First teased under the codename Project A in October 2019, the game began a closed beta period with limited access on April 7, 2020, followed by an official release on June 2, 2020. The development of the game started in 2014.';
   String ThisWarofMineDescp = 'This War of Mine is a survival-themed strategy game where the player controls a group of civilian survivors in a makeshift-damaged house in the besieged fictional city of Pogoren, Graznavia. The main goal of the game is to stay alive during the war with the tools and materials that the player can gather.';


    _projects = [
      Project('CS:GO ','images/blando.jpg','CounterStrike : Global Offensive', CSGODescp),
      Project('Valorant ','images/blando.jpg','Awful Game :)', ValorantDescp),
      Project('This War of Mine ','images/blando.jpg','One of the best game I have played', ThisWarofMineDescp),

    ];

  }

  //Getters
  String get getFirstName => this._firstName;
  String get getLastName => this._lastName;
  String get getFullName => '${this._firstName} ${this._lastName}';
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