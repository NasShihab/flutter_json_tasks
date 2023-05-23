class AndroidVerison {
  int? id;
  String? title;

  AndroidVerison({this.id, this.title});

  factory AndroidVerison.fromJson(Map<String, dynamic> json) {
    return AndroidVerison(
      id: json['id'],
      title: json['title'],
    );
  }
}
