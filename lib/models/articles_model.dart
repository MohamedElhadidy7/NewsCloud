class articlemodel {
  final String? image;
  final String title;
  final String? subtitle;

  articlemodel(
      {required this.image, required this.title, required this.subtitle});

  factory articlemodel.fromJson(json) {
    return articlemodel(
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
    );
  }
}
