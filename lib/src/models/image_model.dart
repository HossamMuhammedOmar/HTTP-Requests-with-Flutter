// Image Model Class
// take three param (id, url, title)
// Or take json url

class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(id, url, title);

  ImageModel.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        url = parsedJson['url'],
        title = parsedJson['title'];
}
