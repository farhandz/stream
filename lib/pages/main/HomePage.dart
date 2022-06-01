import 'package:animeku/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  
  
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 100) / 2;
    final double itemWidth = size.width / 2;
    
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
            offset: Offset(0, 3), 
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



    // Widget iconAnime() {
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: List.generate(2, (index) {
    //     return Container(
    //       child: ,
    //     );
    //   }),
    //  );
    // }
    
    

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
             childAspectRatio: (itemWidth / itemHeight),
            shrinkWrap: true,
            padding: EdgeInsets.all(10),
            physics: BouncingScrollPhysics() ,
            scrollDirection: Axis.vertical,
            crossAxisCount: 3, children: List.generate(10, (index) {
            return Container(
              margin: EdgeInsets.all(2),
              child: Container(                           
                color: Colors.white,
                child: Text("anime list new"),
              ),
            );
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
        header(),
        SizedBox(height: 5,),
        slider(),
        SizedBox(height: 5,),
        animeList()
      ],
    );
  }
}