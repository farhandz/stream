import 'package:animeku/pages/main/HomePage.dart';
import 'package:animeku/pages/main/JadwalPage.dart';
import 'package:animeku/utils/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   int   _stateBottom = 0;
  @override
  Widget build(BuildContext context) {


  Widget bottonNavigation() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          backgroundColor: primaryColor,
        currentIndex:_stateBottom,
        onTap: (int value) {
          setState(() {
            _stateBottom = value;
          });
        },
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_month),
        label: 'On Going',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.folder),
        label: 'Folder',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
   );
  }

  bodys() {
    switch (_stateBottom) {
      case 0:
        return HomePage();
      case 1:
        return JadwalPage();
      default:
        return HomePage();
    }
  }
    
    return Scaffold(
      body: bodys(),
      bottomNavigationBar: bottonNavigation(),
    );
  }
}