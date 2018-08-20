class RecommenderModel {
  RecommenderModel(
    this.filtered,
    this.score,
    this.source
  );
  final String source;
  final bool filtered;
  final int score;
}
