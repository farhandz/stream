class AnimeNew {
  AnimeNew({
    required this.img,
    required this.title,
    required this.episode,
    required this.rilis,
  });
  late final String img;
  late final String title;
  late final String episode;
  late final String rilis;
  
  AnimeNew.fromJson(Map<String, dynamic> json){
    img = json['img'];
    title = json['title'];
    episode = json['episode'];
    rilis = json['rilis'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['img'] = img;
    _data['title'] = title;
    _data['episode'] = episode;
    _data['rilis'] = rilis;
    return _data;
  }
}