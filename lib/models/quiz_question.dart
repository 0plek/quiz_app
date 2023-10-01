class QuizQuestion {
  const QuizQuestion(
    this.text,
    this.answears,
  );

  final String text;
  final List<String> answears;

  List<String> getShuffledAnswears() {
    final shuffledList = List.of(answears);
    shuffledList.shuffle();
    return shuffledList;
  }
}
