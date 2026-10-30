import 'package:cinemex/features/movies/data/models/moviedb_model.dart';
import 'package:cinemex/features/movies/domain/domain.dart';

/// ---------------------------------------------------------------
/// Esta clase es la encargada de mapear los modelos de datos de la API a las entidades del dominio.
/// Esto nos permite separar la lógica de negocio de la lógica de presentación y de la lógica de datos,
/// siguiendo el principio de responsabilidad única. Además, permite cambiar la fuente de datos sin afectar
/// el resto de la aplicación, siempre y cuando se cumpla con el contrato definido en el dominio.
/// 
/// ¿Que vamos a ocupar?
/// 1- Crear un método estático que reciba un MovieDb y retorne un Movie
/// 2- Mapear cada propiedad del MovieDb a la propiedad correspondiente del Movie, teniendo en cuenta que 
///    algunas propiedades pueden ser nulas o vacías, y en ese caso debemos asignar un valor por defecto,
///   como una imagen de placeholder para el poster y el backdrop, mapear los genreIds de int a String, 
///   etc.
///    
/// ----------------------------------------------------------------
