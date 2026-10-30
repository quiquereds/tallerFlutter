/// ---------------------------------------------------------------
/// Esta clase representa la respuesta de la API de The Movie Database para obtener una lista de películas.
/// Contiene todas las propiedades que la API nos devuelve, incluyendo la lista de películas, la página actual, 
/// el total de páginas y el total de resultados.
/// 
/// ¿Que vamos a ocupar?
/// 1- Crear una clase MovieDbResponse con todas las propiedades que la API nos devuelve, usando el mismo nombre de las propiedades.
/// 2- Crear un constructor que reciba todas las propiedades como parámetros requeridos.
/// 3- Crear un método fromJson que reciba un Map<String, dynamic> y retorne una instancia de MovieDbResponse.
/// 4- Crear un método toJson que retorne un Map<String, dynamic> con los valores de las propiedades.
/// 
/// Es importante verificar que la propiedad "dates" puede ser nula, por lo que debemos manejar ese caso 
/// en el método fromJson y toJson, mediante el operador de anulación (?) o usar operadores ternarios 
/// (condición ? valor_si_verdadero : valor_si_falso).
/// 
/// *Pro tip: Podemos usar la herramienta QuickType para generar el código de la 
/// *clase MovieDb a partir de una lista JSON de ejemplo.
///    
/// ----------------------------------------------------------------
// ignore_for_file: dangling_library_doc_comments

