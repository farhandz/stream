import 'package:animeku/model/new_anime_list.dart';
import 'package:animeku/utils/theme.dart';
import 'package:flutter/material.dart';
class CardAnime extends StatelessWidget {
      AnimeNew ?  collection;
    CardAnime({ Key? key, required this.collection }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(
          color: primaryColor.withOpacity(.5),
          borderRadius: BorderRadius.circular(10)

          ),
        padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("${collection!.img.split('?quality=90&resize=154,104)')[0]}")
                  )
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: primaryColor.withOpacity(.5),
                    ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Flexible(
                              child: Text(
                                '${collection!.title}',
                                overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    softWrap: false,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
              Container(
                  padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: primaryColor.withOpacity(.5),
                    ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Flexible(
                              child: Text(
                                collection!.episode,
                                overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    softWrap: false,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 9,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
              Spacer(),
              Container(
                    decoration: BoxDecoration(
                        color: primaryColor.withOpacity(.5),
                    ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Flexible(
                              child: Text(
                                collection!.rilis,
                                overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    softWrap: false,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 9,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
              
            ],
          ),
        ),
      )
    );
  }
}

class $ {
}