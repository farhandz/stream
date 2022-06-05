import 'package:animeku/config/api.dart';
import 'package:animeku/model/new_anime_list.dart';
import 'package:animeku/service/base/base-service.dart';
import 'package:flutter/material.dart';

class PageService extends BaseService {
   Future<List<AnimeNew>> getAll(BuildContext context) async {
      var resp = await request(Api.instance.getNewAnime, RequestType.GET, context);

      print(resp);

      var collectionList = <AnimeNew>[] ;

    //* Check if response contains collection list
    if (resp.containsKey("data")) {
      print("masuk sini");
      resp["data"]["data"].forEach((val) {
        collectionList.add(AnimeNew.fromJson(val));
      }); 
    }

    return collectionList;
    
   }
  
}