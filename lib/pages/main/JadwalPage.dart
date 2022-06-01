import 'package:animeku/utils/theme.dart';
import 'package:animeku/widget/cardAnime.dart';
import 'package:animeku/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class JadwalPage extends StatefulWidget {
  const JadwalPage({ Key? key }) : super(key: key);

  @override
  State<JadwalPage> createState() => _JadwalPageState();
}

class _JadwalPageState extends State<JadwalPage> {
  @override
  Widget build(BuildContext context) {


    Widget listAnime() {
      return GridView.count(
             childAspectRatio: cardAnimeSize(context),
            shrinkWrap: true,
            padding: EdgeInsets.all(10),
            physics: BouncingScrollPhysics() ,
            scrollDirection: Axis.vertical,
            crossAxisCount: 3, children: List.generate(10, (index) {
            return CardAnime();
          },),);
    }

    return ListView(
      children:  [
       Header(text: "On going"),
        listAnime(),
      ],
    );
  }
}