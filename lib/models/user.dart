class User {
  final String name;
  final String profession;
  final String description;
  final String profileImage;

  User({
    required this.name,
    required this.profession,
    required this.description,
    required this.profileImage,
  });

  @override
  String toString() {
    return 'User(name: $name, profession: $profession, description: $description, profileImage: $profileImage)';
  }
}