Map<String, int> classifyScores(List<int> scores) {
  Map<String, int> gradeCount = {'A': 0, 'B': 0, 'C': 0, 'D': 0, 'F': 0};

  for (var score in scores) {
    String grade = switch (score ~/ 10) {
      10 || 9 => 'A',
      8 => 'B',
      7 => 'C',
      6 => 'D',
      _ => 'F',
    };

    gradeCount[grade] = gradeCount[grade]! + 1;
  }

  return gradeCount;
}
