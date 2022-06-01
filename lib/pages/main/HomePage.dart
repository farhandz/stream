import 'package:animeku/model/icon_list_model.dart';
import 'package:animeku/utils/theme.dart';
import 'package:animeku/widget/cardAnime.dart';
import 'package:animeku/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
 

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  
  
  Widget build(BuildContext context) {
    Widget containerSlider() {
      return  ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.only(left: 5, right: 1  ),
          child: SizedBox(
              width: 300,
              height: 200,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      color: primaryColor.withOpacity(.5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'Demon Slayer',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                     margin: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                         
                          padding: EdgeInsets.all(6),
                          color: primaryColor.withOpacity(.6),
                          child: Text("Tv", style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          color: primaryColor.withOpacity(.6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.star, size: 20, color: Colors.white,),
                              SizedBox(width: 5,),
                              Text("7.03", style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Ink.image(
                    image: AssetImage(
                      'assets/banner.png',
                    ),
                    fit: BoxFit.cover,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
          ),
        ),
      );
    }



    Widget iconAnime() {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(iconLists.length, (index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(iconLists[index].icon, height: 40,),
              Container(
                margin: EdgeInsets.only(top: 8),
                child:  Text(iconLists[index].title),
              ),
              
            ],
          );
        }),
       ),
    );
    }
    
    

    Widget animeList() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text('New Anime', style: TextStyle(
              color: Colors.amber
            ),),
          ),
          GridView.count(
             childAspectRatio: cardAnimeSize(context),
            shrinkWrap: true,
            padding: EdgeInsets.all(10),
            physics: BouncingScrollPhysics() ,
            scrollDirection: Axis.vertical,
            crossAxisCount: 3, children: List.generate(10, (index) {
            return CardAnime();
          },),),
        ],
      );
    }
    
    Widget slider() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: [
            containerSlider(),
            containerSlider(),
            containerSlider(),
          ],
        ),
      );
    }
    return ListView(
      children: [
        Header(text: "Home"),
        SizedBox(height: 5,),
        slider(),
        SizedBox(height: 5,),
        iconAnime(),
        SizedBox(height: 5,),
        animeList()
      ],
    );
  }
}