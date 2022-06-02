import 'package:flutter/material.dart';

class DetailAnime extends StatefulWidget {
  const DetailAnime({ Key? key }) : super(key: key);

  @override
  State<DetailAnime> createState() => _DetailAnimeState();
}

class _DetailAnimeState extends State<DetailAnime> {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget appbar() {
        return AppBar(
          title: Text("Hello Appbar"),
          leading: Icon(
          Icons.menu,
        ),
      );
    }
    return Scaffold(
      appBar: appbar(),
      body: Center(
        child: Text('Hai manis'),
      ),
    );
  }
}