class IconList {
  IconList({
    required this.title,
    required this.icon,
  });
  late final String title;
  late final String icon;
  
  IconList.fromJson(Map<String, dynamic> json){
    title = json['title'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['icon'] = icon;
    return _data;
  }
}



final List<IconList> iconLists = [
  IconList(title: "Movie", icon: "assets/play.svg"),
  IconList(title: "Live Action", icon: "assets/live-action.svg"),
  IconList(title: "Genre", icon: "assets/genre.svg"),
  IconList(title: "Batch  ", icon: "assets/batch.svg"),
];