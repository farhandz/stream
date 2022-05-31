import 'package:animeku/pages/main/HomePage.dart';
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
        currentIndex:_stateBottom,
        onTap: (int value) {
          setState(() {
            _stateBottom = value;
          });
        },
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.call),
        label: 'Calls',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.camera),
        label: 'Camera',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        label: 'Chats',
      ),
    ],
     );
  }

  bodys() {
    switch (_stateBottom) {
      case 0:
        return HomePage();
      default:
        HomePage();
    }
  }
    
    return Scaffold(
      body: bodys(),
      bottomNavigationBar: bottonNavigation(),
    );
  }
}