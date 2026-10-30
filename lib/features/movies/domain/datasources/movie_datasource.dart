import 'package:cinemex/features/movies/domain/entities/entities.dart';

/// ---------------------------------------------------------------
/// Esta clase es la encargada de definir el contrato que debe cumplir cualquier clase o datasource
/// externo que quiera obtener información de películas. Esto nos permite cambiar de datasource
/// sin afectar el resto de la aplicación, siempre y cuando cumpla con el contrato definido en el dominio.
/// 
/// ¿Que vamos a ocupar?
/// 1- Crear una interfaz que defina los métodos que debe implementar cualquier clase o datasource externo para
///    este caso, obtener las películas que están en cartelera, las populares y las próximas a estrenarse. 
///    Incluyendo la paginación como parámetro.
/// 
/// Tema: Clases abstractas (nos permiten definir un contrato que debe cumplir cualquier clase que 
/// quiera implementar esa interfaz, sin necesidad de conocer la implementación concreta de esa clase).
///    
/// ----------------------------------------------------------------
// ignore_for_file: dangling_library_doc_comments
