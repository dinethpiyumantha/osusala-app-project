class NewsModel {
  String title = "";
  String imagePath = "";
  String description = "";

  NewsModel(String title, String imagePath, String description) {
    this.title = title;
    this.imagePath = imagePath;
    this.description = description;
  }

  String getTitle() {
    return this.title;
  }

  String getImagePath() {
    return this.imagePath;
  }

  String getDescription() {
    return this.description;
  }
}
