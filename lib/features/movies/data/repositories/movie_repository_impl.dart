import 'package:cinemex/features/movies/domain/domain.dart';

/// ---------------------------------------------------------------
/// Esta clase es la encargada de implementar el contrato definido en el dominio para
/// obtener la información de las películas. Esta clase debe implementar la interfaz
/// MovieRepository, que define el contrato que debe cumplir cualquier clase o repositorio
/// que necesite obtener información de películas.
/// 
/// ¿Que vamos a ocupar?
/// 1- Tener un contrato definido en el Dominio
/// 2- Crear una instancia de MovieDatasource (patrón Singleton)
/// 3- Implementar los métodos de la interfaz MovieRepository usando la instancia de MovieDatasource
///    
/// ----------------------------------------------------------------
// ignore_for_file: dangling_library_doc_comments

class MovieRepositoryImpl implements MovieRepository {
  final MovieDatasource datasource;
  MovieRepositoryImpl({required this.datasource});


  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) => datasource.getNowPlaying(page: page);

  @override
  Future<List<Movie>> getPopular({int page = 1}) => datasource.getPopular(page: page);

  @override
  Future<List<Movie>> getUpcoming({int page = 1}) => datasource.getUpcoming(page: page);
}