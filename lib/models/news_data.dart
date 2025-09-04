class News_Data {
  const News_Data({
    this.image_path,
    this.description,
    required this.main_title,
  });
  final String? image_path;
  final String main_title;
  final String? description;
}
