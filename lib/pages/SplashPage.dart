
import 'package:animeku/utils/theme.dart';
import 'package:flutter/material.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
   Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushNamed(context, '/home');
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/splash.png')
                )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("Loading....", style: TextStyle(
            color: Colors.black87,
            fontSize: 20
          ),),
        ],
      ),
    );
  }
}
