class Note {
  String? title;
  String? description;

  Note(this.title, this.description);

  Note.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    description = json["description"];
  }
}
