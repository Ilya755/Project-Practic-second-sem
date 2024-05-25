class Teacher {
  final int id;
  final String name;
  final double rating;
  final List<String> reviews;
  final Map<String, List<String>> materials;

  Teacher({
    required this.id,
    required this.name,
    required this.rating,
    required this.reviews,
    required this.materials,
  });
}

Teacher createTeacher({
  required int id,
  required String name,
  required double rating,
  required List<String> reviews,
  required Map<String, List<String>> materials,
}) {
  return Teacher(
    id: id,
    name: name,
    rating: rating,
    reviews: reviews,
    materials: materials,
  );
}
