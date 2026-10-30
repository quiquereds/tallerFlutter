import 'package:cinemex/features/movies/domain/domain.dart';
import 'package:cinemex/features/movies/domain/entities/category_entity.dart';
import 'package:cinemex/features/movies/presentation/providers/movie/movies_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ---------------------------------------------------------------
/// Esta clase es la encargada de manejar el estado de la lista de películas, dependiendo de la categoría que 
/// se le pase como parámetro. Esta clase extiende de AsyncNotifier, que nos permite manejar el estado de la 
/// lista de películas de manera asíncrona. 
/// 
/// ¿Que vamos a ocupar?
/// 1- Crear una clase que extienda de AsyncNotifier, que reciba como parámetro la categoría 
///     de películas que queremos mostrar.
/// 2- Implementar el método build, que se ejecuta cuando se crea la instancia del provider, y que debe retornar
///   la lista de películas de la categoría correspondiente.
/// 3- Implementar un método privado _fetchMovies, que reciba como parámetro la categoría y el repositorio, y que
///   retorne la lista de películas de la categoría correspondiente.
/// 4- Implementar un método público loadMore, que se encargue de cargar más películas cuando 
///   se llegue al final de la lista.
/// 5- Crear un provider que reciba como parámetro la categoría de películas que queremos mostrar, y que retorne
///   una instancia de MoviesNotifier.
///    
/// ----------------------------------------------------------------
// ignore_for_file: dangling_library_doc_comments
 
class MoviesNotifier extends AsyncNotifier<List<Movie>> {
  MoviesNotifier(this.category);
  final Category category;
 
  int _page = 1;
  bool _isLoading = false;
 
  @override
  Future<List<Movie>> build() {
    _page = 1;
    return _fetchMovies(ref.watch(movieRepositoryProvider), 1);
  }
 
  Future<List<Movie>> _fetchMovies(MovieRepository rep, int page) {
    return switch (category) {
      Category.nowPlaying => rep.getNowPlaying(page: page),
      Category.upcoming => rep.getUpcoming(page: page),
      Category.popular => rep.getPopular(page: page),
    };
  }
 
  Future<void> loadMore() async {
    if (_isLoading) return;
    _isLoading = true;
    try {
      final repo = ref.read(movieRepositoryProvider);
      final newMovies = await _fetchMovies(repo, _page + 1);
      if (!ref.mounted) return;
      _page++;
      state = AsyncData([...?state.value, ...newMovies]);
    } catch (_) {
      // if it fails, the current list stays as is
    } finally {
      _isLoading = false;
    }
  }
}
 
// Provider used by the widgets. Receives the category as argument.
final moviesProvider =
    AsyncNotifierProvider.family<MoviesNotifier, List<Movie>, Category>(
  MoviesNotifier.new,
);