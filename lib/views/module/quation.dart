class Question {
  final String imagePath;
  final String description;
  final List<String> options;
  final List<int> correctAnswerIndex;

  Question({
    required this.imagePath,
    required this.options,
    required this.correctAnswerIndex,
    required this.description,
  });
}