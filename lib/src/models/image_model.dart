class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  // Named Contructor: Longer form of writing one
  // Will accept a map (object in JS) with key of type 'String' and values of type 'dynamic'
  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }

  // Shorter form of writing a named constructor:
  // ImageModel.fromJson(Map<String, dynamic> parsedJson)
  //     : id = parsedJson['id'],
  //       url = parsedJson['url'],
  //       title = parsedJson['title'];
}
