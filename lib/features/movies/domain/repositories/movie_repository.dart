import 'package:cinemex/features/movies/domain/entities/entities.dart';

/// ---------------------------------------------------------------
/// Crea un contrato que debe cumplir cualquier clase o repositorio que necesite obtener información de películas.
/// 
/// ¿Que vamos a ocupar?
/// 1- Crear una interfaz que defina los métodos que debe implementar cualquier clase o repositorio externo para
///   este caso, obtener las películas que están en cartelera, las populares y las próximas a estrenarse.
///    
/// ----------------------------------------------------------------
// ignore_for_file: dangling_library_doc_comments

abstract class MovieRepository {
  Future<List<Movie>> getNowPlaying({int page = 1});

  Future<List<Movie>> getPopular({int page = 1});

  Future<List<Movie>> getUpcoming({int page = 1});
}