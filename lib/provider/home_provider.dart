import 'package:animeku/injector.dart';
import 'package:animeku/model/new_anime_list.dart';
import 'package:animeku/service/page-service.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {

   List<AnimeNew> ? _collectionList;
  List<AnimeNew> ? get collectionList => _collectionList;


   //* Dependency Injection
  PageService pageService = locator<PageService>();

    void getAll (BuildContext context) async{
      _collectionList = await pageService.getAll(context);
      notifyListeners();
    }
}