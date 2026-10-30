/// ---------------------------------------------------------------
/// Esta clase define la entidad Movie, nuestra representación de una película 
/// en el dominio de la aplicación. No contiene lógica de negocio ni depende de ninguna 
/// fuente de datos externa. Es nuestra regla de negocio para representar una película, 
/// y debe ser utilizada por todas las capas de la aplicación que necesiten trabajar con películas.
/// 
/// ¿Que vamos a ocupar?
/// 1- Crear una clase Movie con los atributos que necesitamos para representar una película.
/// 2- Implementar un constructor para la clase Movie que reciba los atributos como parámetros.
///    
/// ----------------------------------------------------------------
// ignore_for_file: dangling_library_doc_comments


class Movie {
  // Atributos
  final bool adult;
  final String backdropPath;
  final List<String> genreIds;
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

  // Constructor de la clase
  Movie({
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

}