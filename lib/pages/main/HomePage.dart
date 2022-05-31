import 'package:animeku/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        decoration: BoxDecoration(
        color: primaryColor,
          borderRadius: BorderRadius.circular(9),
            boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
          border: Border.all(color: Colors.white10, width: 1)
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Center(
              child: Text('Logo', style: GoogleFonts.alatsi(
                fontSize: 20,
                color: Colors.black
              ),),
            ),
            Spacer(),
            Icon(Icons.search_outlined, color: Colors.black,  size: 30,),
            SizedBox(width: 7,),
          ],
        ),
      );
    }
    Widget slider() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: [
         Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
             image: DecorationImage(
                image: AssetImage('assets/splash.png')
             )
           ),
         ),
         Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
             image: DecorationImage(
                image: AssetImage('assets/splash.png')
             )
           ),
         ),
         Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
             image: DecorationImage(
                image: AssetImage('assets/splash.png')
             )
           ),
         ),
         Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
             image: DecorationImage(
                image: AssetImage('assets/splash.png')
             )
           ),
         ),
         Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
             image: DecorationImage(
                image: AssetImage('assets/splash.png')
             )
           ),
         ),
          ],
        ),
      );
    }
    return ListView(
      children: [
        header(),
        SizedBox(height: 30,),
        slider()
      ],
    );
  }
}