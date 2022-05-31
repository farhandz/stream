
import 'package:animeku/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
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
          SpinKitSquareCircle(
            color: Colors.white,
            size: 50.0,
          ),
          Text("Loading...", style: GoogleFonts.abel(fontSize: 20,),),
        ],
      ),
    );
  }
}
