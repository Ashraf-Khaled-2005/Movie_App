class MovieEntity {
  final int id_;
  final String title_;
  final String overview_;
  final String year_;
  final num rating_;
  final num runtime_;
  final num likes_;
  final List<String> genres_;
  final String language_;
  final List<String> images_;
  final String sizedownload_;
  final String quality_;
  final String serverUrl_;
  final String torrurl_;

  MovieEntity({
    required this.id_,
    required this.title_,
    required this.overview_,
    required this.year_,
    required this.rating_,
    required this.runtime_,
    required this.likes_,
    required this.genres_,
    required this.language_,
    required this.images_,
    required this.sizedownload_,
    required this.quality_,
    required this.serverUrl_,
    required this.torrurl_,
  });
}
