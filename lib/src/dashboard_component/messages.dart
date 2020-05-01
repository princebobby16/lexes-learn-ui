class Message {
  final String name;
  final String text;
  String photoURL;
  String imageURL;

  Message(this.name, [this.text, String photoURL, this.imageURL]) {
    this.photoURL = photoURL ?? "img/photo.png";
  }

  Message.fromMap(Map map) :
        this(map['name'], map['text'], map['photoURL'], map['imageURL']);

  Map toMap() => {
    "name": name,
    "text": text,
    "photoURL": photoURL,
    "imageURL": imageURL
  };
}