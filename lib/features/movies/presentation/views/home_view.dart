import 'dart:ui';
import 'package:cinemex/features/movies/domain/entities/category_entity.dart';
import 'package:cinemex/features/movies/presentation/providers/movie/movies_provider.dart';
import 'package:cinemex/features/movies/presentation/widgets/movies/movie_horizontal_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerWidget {
  static const name = 'home-view';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            floating: true,
            backgroundColor: scaffoldBackgroundColor.withAlpha(200),
            flexibleSpace: FlexibleSpaceBar(
              // CustomAppbar does not exist in the project, plain title instead
              title: Text(
                'Cinemex',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              titlePadding: EdgeInsets.zero,
              background: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(color: Colors.transparent),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 25),
              for (final category in Category.values)
                _CategorySection(category: category),
            ]),
          ),
        ],
      ),
    );
  }
}

/// Shows the horizontal list of a category only once it has data.
class _CategorySection extends ConsumerWidget {
  final Category category;

  const _CategorySection({required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesAsync = ref.watch(moviesProvider(category));

    return moviesAsync.when(
      data: (movies) => MovieHorizontalListview(
        title: category.name,
        movies: movies,
        loadNextPage: () =>
            ref.read(moviesProvider(category).notifier).loadMore(),
      ),
      loading: () => const SizedBox(
        height: 120,
        child: Center(child: CircularProgressIndicator()),
      ),
      error: (error, _) => Padding(
        padding: const EdgeInsets.all(16),
        child: Text('${category.name}: $error'),
      ),
    );
  }
}
