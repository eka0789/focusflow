class FocusScore {
  final double score;
  final String status;
  final DateTime timestamp;

  FocusScore({required this.score, required this.status, required this.timestamp});

  factory FocusScore.fromJson(Map<String, dynamic> json) {
    return FocusScore(
      score: json['focus_score'],
      status: json['status'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}
