import 'dart:js';

import 'package:animeku/config/api.dart';
import 'package:animeku/model/new_anime_list.dart';
import 'package:animeku/service/base/base-service.dart';
import 'package:flutter/material.dart';

class PageService extends BaseService {
   Future<List<AnimeNew>> getAll(BuildContext context) async {
      var resp = await request(Api.instance.getNewAnime, RequestType.GET, context);

      var collectionList = <AnimeNew>[] ;

    //* Check if response contains collection list
    if (resp.containsKey("collections")) {
      resp["collections"].forEach((val) {
        collectionList.add(AnimeNew.fromJson(val["collection"]));
      }); 
    }

    return collectionList;
    
   }
  
}