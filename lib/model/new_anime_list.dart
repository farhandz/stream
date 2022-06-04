class AnimeNew {
  AnimeNew({
    required this.id,
    required this.date,
    required this.data,
    required this.V,
  });
  late final String id;
  late final String date;
  late final List<AnimeNew> data;
  late final int V;
  
  AnimeNew.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    date = json['date'];
    data = List.from(json['data']).map((e)=>AnimeNew.fromJson(e)).toList();
    V = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['date'] = date;
    _data['data'] = data.map((e)=>e.toJson()).toList();
    _data['__v'] = V;
    return _data;
  }
}