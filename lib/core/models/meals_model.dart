class MealsModel {
  final dynamic id;
  final String image;
  final String title;

  MealsModel({required this.id, required this.image, required this.title});
  factory MealsModel.fromJson(json) {
    return MealsModel(
      id: json['id'] ?? 0, // Provide default value if null
      image: json['image'] ?? '',
      title: json['title'] ?? 'Unknown Title',
    );
  }
}
