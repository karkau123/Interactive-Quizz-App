class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  final String text; // this is ques
  final List<String> answers; // the are answers

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
