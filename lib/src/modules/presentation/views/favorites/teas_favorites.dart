import 'package:chazen/src/modules/presentation/shared/components/components.dart';
import 'package:chazen/src/modules/presentation/views/favorites/components/custom_card_favorites.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../tea_list/tea_list.dart';

class TeasFavorites extends StatefulWidget {
  const TeasFavorites({super.key});

  @override
  State<TeasFavorites> createState() => _TeasFavoritesState();
}

class _TeasFavoritesState extends State<TeasFavorites> {
  final viewModel = Modular.get<TeaViewModel>();

  @override
  Widget build(BuildContext context) {
    final favoriteTeas =
        viewModel.value.teas.where((tea) => tea.isFavorite).toList();

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Favoritos',
      ),
      body: favoriteTeas.isEmpty
          ? const Center(
              child: Text('Nenhum item favorito encontrado'),
            )
          : GridView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              itemCount: favoriteTeas.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10.0,
                crossAxisCount: 2,
                childAspectRatio: 0.78,
              ),
              itemBuilder: (context, index) {
                final tea = favoriteTeas[index];
                return CustomCardFavorites(
                  id: tea.id,
                  name: tea.name,
                  image: tea.image,
                  isFavorite: tea.isFavorite,
                  onToggleFavorite: (id) {
                    setState(() {
                      viewModel.toggleFavorite(id);
                    });
                  },
                );
              },
            ),
    );
  }
}
