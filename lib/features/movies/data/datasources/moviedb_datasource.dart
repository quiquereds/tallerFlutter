import 'package:dio/dio.dart';

/// ---------------------------------------------------------------
/// Esta clase es la encargada de hacer las peticiones a la API de The Movie Database 
/// para obtener la información de las películas. Esta clase debe implementar la interfaz
/// MovieDatasource, que define el contrato que debe cumplir cualquier clase o datasource
/// externo que quiera obtener información de películas. Esto nos permite cambiar de datasource
/// sin afectar el resto de la aplicación, siempre y cuando cumpla con el contrato definido
/// 
/// ¿Que vamos a ocupar?
/// 1- Tener un contrato definido en el Dominio
/// 2- Crear una instancia de Dio (patrón Singleton)
/// 3- Implementar los métodos de la interfaz MovieDatasource usando la instancia de Dio
/// 4- Crear un método privado para transformar la respuesta de la API en una lista de películas,
///   filtrando aquellas que no tengan poster o backdrop usando el mapper de MovieMapper. Este método
///   debe transformar la respuesta en una respuesta de MovieDbResponse, luego transformar la lista de
///   MovieDb en una lista de Movie, filtrando las que no tengan poster o backdrop usando los métodos
///   .where y .map, y finalmente retornar la lista de Movie.
/// ----------------------------------------------------------------



