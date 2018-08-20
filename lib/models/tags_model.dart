class TagsModels {
  PostsModel(
    this.title,
    this.ngxCached,
    this.ngxCachedTime,
    this.id
  );
  final String title;
  final bool ngxCached;
  final int ngxCachedTime;
  final String id;
}
