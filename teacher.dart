class Teacher {
  int id;
  String name;
  String review;
  double rating;
  String textbookPath;

  Teacher({
    required this.id,
    required this.name,
    required this.review,
    required this.rating,
    required this.textbookPath,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'review': review,
      'rating': rating,
      'textbookPath': textbookPath,
    };
  }
}