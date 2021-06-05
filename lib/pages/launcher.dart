import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountbutton.dart/login.dart';
import 'package:flutter_application_1/pages/Account.dart';
import 'package:flutter_application_1/pages/Favorite.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
class Launcher extends StatefulWidget {
    static const routeName = '/';
 
    @override
    State<StatefulWidget> createState() {
        return _LauncherState();
    }
}
 
class _LauncherState extends State<Launcher> {
    int _selectedIndex = 0;
    List<Widget> _pageWidget = <Widget>[
        HomePage(),
        Favorite(),
        Account(),
        Login(),
    ];
    List<BottomNavigationBarItem> _menuBar= <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('FAVORITE'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text('ACCOUNT'),
        ),
        
    ];
 
    void _onItemTapped(int index) {
        setState(() {
            _selectedIndex = index;
        });
    }
 
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: _pageWidget.elementAt(_selectedIndex),
            bottomNavigationBar: BottomNavigationBar(
                items: _menuBar,
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.black,
                onTap: _onItemTapped,
            ),
        );
    }
}