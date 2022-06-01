import 'package:animeku/utils/theme.dart';
import 'package:flutter/material.dart';
class CardAnime extends StatelessWidget {
  const CardAnime({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
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
                            Flexible(
                              child: Container(
                                child: Text(
                                  'Demon Slayesaasasasxasx',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  softWrap: false,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
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
    );
  }
}