/// ---------------------------------------------------------------
/// Esta clase representa el modelo de datos de una película obtenida desde la API.
/// Contiene todas las propiedades que la API nos devuelve.
/// 
/// ¿Que vamos a ocupar?
/// 1- Crear una clase MovieDb con todas las propiedades que la API nos devuelve, usando el mismo nombre de las propiedades.
/// 2- Crear un constructor que reciba todas las propiedades como parámetros requeridos.
/// 3- Crear un método fromJson que reciba un Map<String, dynamic> y retorne una instancia de MovieDb.
/// 4- Crear un método toJson que retorne un Map<String, dynamic> con los valores de las propiedades.
/// 
/// *Pro tip: Podemos usar la herramienta QuickType para generar el código de la 
/// *clase MovieDb a partir de un Movie JSON de ejemplo.
///    
/// ----------------------------------------------------------------
// ignore_for_file: dangling_library_doc_comments

class MovieDb {
    final bool adult;
    final String backdropPath;
    final List<int> genreIds;
    final int id;
    final String title;
    final String originalLanguage;
    final String originalTitle;
    final String overview;
    final double popularity;
    final String posterPath;
    final DateTime? releaseDate;
    final bool softcore;
    final bool video;
    final double voteAverage;
    final int voteCount;

    MovieDb({
        required this.adult,
        required this.backdropPath,
        required this.genreIds,
        required this.id,
        required this.title,
        required this.originalLanguage,
        required this.originalTitle,
        required this.overview,
        required this.popularity,
        required this.posterPath,
        required this.releaseDate,
        required this.softcore,
        required this.video,
        required this.voteAverage,
        required this.voteCount,
    });

    factory MovieDb.fromJson(Map<String, dynamic> json) => MovieDb(
        adult: json["adult"] ?? false,
        backdropPath: json["backdrop_path"] ?? '',
        genreIds: List<int>.from(json["genre_ids"] ?? const []),
        id: json["id"],
        title: json["title"] ?? '',
        originalLanguage: json["original_language"] ?? '',
        originalTitle: json["original_title"] ?? '',
        overview: json["overview"] ?? '',
        popularity: (json["popularity"] ?? 0).toDouble(),
        posterPath: json["poster_path"] ?? '',
        releaseDate: DateTime.tryParse(json["release_date"] ?? ''),
        softcore: json["softcore"] ?? false,
        video: json["video"] ?? false,
        voteAverage: (json["vote_average"] ?? 0).toDouble(),
        voteCount: json["vote_count"] ?? 0,
    );

    Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "id": id,
        "title": title,
        "original_language": originalLanguage,
        "original_title": originalTitle,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "release_date": releaseDate == null
            ? null
            : "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        "softcore": softcore,
        "video": video,
        "vote_average": voteAverage,
        "vote_count": voteCount,
    };
}