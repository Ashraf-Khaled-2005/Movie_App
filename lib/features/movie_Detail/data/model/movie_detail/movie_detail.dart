import 'package:movie_app/features/home/domain/entity/movie_entity.dart';

import 'torrent.dart';

class MovieDetail extends MovieEntity {
  int? id;
  String? url;
  String? imdbCode;
  String? title;
  String? titleEnglish;
  String? titleLong;
  String? slug;
  int? year;
  double? rating;
  int? runtime;
  List<String>? genres;
  int? likeCount;
  String? descriptionIntro;
  String? descriptionFull;
  String? ytTrailerCode;
  String? language;
  String? mpaRating;
  String? backgroundImage;
  String? backgroundImageOriginal;
  String? smallCoverImage;
  String? mediumCoverImage;
  String? largeCoverImage;
  List<Torrent>? torrents;
  String? dateUploaded;
  int? dateUploadedUnix;

  MovieDetail({
    this.id,
    this.url,
    this.imdbCode,
    this.title,
    this.titleEnglish,
    this.titleLong,
    this.slug,
    this.year,
    this.rating,
    this.runtime,
    this.genres,
    this.likeCount,
    this.descriptionIntro,
    this.descriptionFull,
    this.ytTrailerCode,
    this.language,
    this.mpaRating,
    this.backgroundImage,
    this.backgroundImageOriginal,
    this.smallCoverImage,
    this.mediumCoverImage,
    this.largeCoverImage,
    this.torrents,
    this.dateUploaded,
    this.dateUploadedUnix,
  }) : super(
         id_: id!,
         title_: titleLong!,
         quality_: torrents?[0].quality ?? "720",
         overview_: descriptionFull!,
         year_: year?.toString() ?? "2000",
         rating_: rating ?? 5,
         runtime_: runtime ?? 90,
         likes_: likeCount ?? 20,
         genres_: genres!,
         language_: language!,
         images_: [
           backgroundImageOriginal!,
           smallCoverImage!,
           mediumCoverImage!,
           largeCoverImage!,
         ],
         sizedownload_: torrents?[0].size ?? "1GB",
         serverUrl_: url!,
         torrurl_: torrents?[0].url ?? "Not found",
       );

  factory MovieDetail.fromJson(Map<String, dynamic> json) => MovieDetail(
    id: json['id'] as int?,
    url: json['url'] as String?,
    imdbCode: json['imdb_code'] as String?,
    title: json['title'] as String?,
    titleEnglish: json['title_english'] as String?,
    titleLong: json['title_long'] as String?,
    slug: json['slug'] as String?,
    year: json['year'] as int?,
    rating: (json['rating'] as num?)?.toDouble(),
    runtime: json['runtime'] as int?,
    genres: json['genres'] as List<String>?,
    likeCount: json['like_count'] as int?,
    descriptionIntro: json['description_intro'] as String?,
    descriptionFull: json['description_full'] as String?,
    ytTrailerCode: json['yt_trailer_code'] as String?,
    language: json['language'] as String?,
    mpaRating: json['mpa_rating'] as String?,
    backgroundImage: json['background_image'] as String?,
    backgroundImageOriginal: json['background_image_original'] as String?,
    smallCoverImage: json['small_cover_image'] as String?,
    mediumCoverImage: json['medium_cover_image'] as String?,
    largeCoverImage: json['large_cover_image'] as String?,
    torrents: (json['torrents'] as List<dynamic>?)
        ?.map((e) => Torrent.fromJson(e as Map<String, dynamic>))
        .toList(),
    dateUploaded: json['date_uploaded'] as String?,
    dateUploadedUnix: json['date_uploaded_unix'] as int?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'url': url,
    'imdb_code': imdbCode,
    'title': title,
    'title_english': titleEnglish,
    'title_long': titleLong,
    'slug': slug,
    'year': year,
    'rating': rating,
    'runtime': runtime,
    'genres': genres,
    'like_count': likeCount,
    'description_intro': descriptionIntro,
    'description_full': descriptionFull,
    'yt_trailer_code': ytTrailerCode,
    'language': language,
    'mpa_rating': mpaRating,
    'background_image': backgroundImage,
    'background_image_original': backgroundImageOriginal,
    'small_cover_image': smallCoverImage,
    'medium_cover_image': mediumCoverImage,
    'large_cover_image': largeCoverImage,
    'torrents': torrents?.map((e) => e.toJson()).toList(),
    'date_uploaded': dateUploaded,
    'date_uploaded_unix': dateUploadedUnix,
  };
}
