
import 'package:animeku/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Header extends StatelessWidget {
  final String  text;
  const Header({ Key? key, required this.text  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        color: primaryColor,
          borderRadius: BorderRadius.circular(9),
            boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), 
          ),
        ],
          border: Border.all(color: Colors.white10, width: 1)
        ),
        padding: EdgeInsets.all(10),  
        child: Row(
          children: [
            Center(
              child: Text(text, style: GoogleFonts.alatsi(
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
}