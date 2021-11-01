import 'package:bin_movie/Utils/Dataconstants.dart';
import 'package:bin_movie/screen/tab_bar/movies.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';

import 'bottom_bar/bookmark.dart';
import 'bottom_bar/favPage.dart';
import 'menu.dart';

class NewDash extends StatefulWidget {
  const NewDash({Key key}) : super(key: key);

  @override
  _NewDashState createState() => _NewDashState();
}

class _NewDashState extends State<NewDash> with SingleTickerProviderStateMixin {
  int _index = 0, _currentAlertIndex = 0;
  static List<Widget> _pages;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();

    Dataconstants.apiResponse.movie();
    Dataconstants.researchTabController = TabController(vsync: this, length: 3);
    print("test");
    Dataconstants.mainScreenIndex = 0;
    _pages = <Widget>[MoviePage(), Favourite(), BookMark(), Menu()];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      // endDrawer: Drawer(
      //   elevation: 10.0,
      //   child: ListView(
      //     children: <Widget>[
      //       DrawerHeader(
      //         decoration: BoxDecoration(color: Colors.black),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: <Widget>[
      //             CircleAvatar(
      //               backgroundImage: NetworkImage(
      //                   'https://media-exp1.licdn.com/dms/image/C4D03AQEFUkUKS7oWdQ/profile-displayphoto-shrink_200_200/0/1633238995267?e=1640822400&v=beta&t=8FZ6BuMjiWNZXMxhFWhkWRLaD6WRLuC3M4QvqbfgbBo'),
      //               radius: 40.0,
      //             ),
      //             Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: <Widget>[
      //                 Text(
      //                   'Karan Solanki',
      //                   style: TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.white,
      //                       fontSize: 25.0),
      //                 ),
      //                 SizedBox(height: 10.0),
      //                 Text(
      //                   'Solankikaran307@gmail.com',
      //                   style: TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.white,
      //                       fontSize: 14.0),
      //                 ),
      //               ],
      //             )
      //           ],
      //         ),
      //       ),

      //       //Here you place your menu items
      //       ListTile(
      //         tileColor: Colors.black,
      //         leading: Icon(
      //           Icons.home,
      //           color: Colors.pink,
      //         ),
      //         title: Text('Home Page',
      //             style: TextStyle(fontSize: 18, color: Colors.white)),
      //         onTap: () {
      //           // Here you can give your route to navigate
      //         },
      //       ),

      //       ListTile(
      //         tileColor: Colors.black,
      //         leading: Icon(
      //           Icons.settings,
      //           color: Colors.pink,
      //         ),
      //         title: Text('Settings',
      //             style: TextStyle(fontSize: 18, color: Colors.white)),
      //         onTap: () {
      //           // Here you can give your route to navigate
      //         },
      //       ),
      //       ListTile(
      //         tileColor: Colors.black,
      //         leading: Icon(
      //           Icons.close,
      //           color: Colors.pink,
      //         ),
      //         title: Text('Close Drawer',
      //             style: TextStyle(fontSize: 18, color: Colors.white)),
      //         onTap: () {
      //           // Here you can give your route to navigate
      //           Navigator.of(context).pop();
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      key: _scaffoldKey,
      body: _pages.elementAt(Dataconstants.mainScreenIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[900],
        backgroundColor: Colors.grey[850],
        selectedItemColor: Colors.pink,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              size: 30,
            ),
            label: '',
          ),
        ],
        currentIndex: Dataconstants.mainScreenIndex,
        onTap: (index) {
          setState(() {
            Dataconstants.mainScreenIndex = index;
          });
        },
      ),
    );
  }
}
