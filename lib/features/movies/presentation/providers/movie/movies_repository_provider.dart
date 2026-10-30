import 'package:cinemex/features/movies/data/datasources/moviedb_datasource.dart';
import 'package:cinemex/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ---------------------------------------------------------------
/// Este provider es el encargado de crear una instancia de MovieRepositoryImpl, que implementa el contrato
/// definido en el dominio para obtener la información de las películas.
/// 
/// La función del provider es crear una instancia de MovieDbDatasource y pasarla como parámetro al constructor 
/// de MovieRepositoryImpl, de esta manera, MovieRepositoryImpl puede utilizar los métodos de MovieDbDatasource 
/// para obtener la información. Si luego, queremos cambiar de datasource, solo tenemos que crear una nueva clase 
/// que implemente MovieDatasource y cambiar la instancia que se pasa al constructor de MovieRepositoryImpl, 
/// sin afectar el resto de la aplicación.
/// 
/// ¿Que vamos a ocupar?
/// 1- Crear un provider simple que retorne una instancia de MovieRepositoryImpl, pasando como 
///     parámetro una instancia de MovieDbDatasource.
/// 
///    
/// ----------------------------------------------------------------
// ignore_for_file: dangling_library_doc_comments
