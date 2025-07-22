class Post {
  String title;
  String postText;
  String author;
  DateTime date;
  String imageUrl;

  Post({
    required this.title,
    required this.postText,
    required this.author,
    required this.date,
    required this.imageUrl,
  });

  @override
  String toString() {
    return 'Post(title: $title, postText: $postText, author: $author, date: $date, imageUrl: $imageUrl)';
  }
}