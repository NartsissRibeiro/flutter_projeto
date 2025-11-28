import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tcc_flutter_app/src/features/home/view/widgets/imagem_destaque_widget.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(title: const Text('Etec Alberto Feres')),
        SliverToBoxAdapter(
          child: ImagemDestaqueWidget(
            imageUrl: 'https://images.pexels.com/photos/267885/pexels-photo-267885.jpeg',
            title: 'TCCs',
            subtitle: 'Projetos de destaque',
            buttonText: 'Acessar',
            onPressed: () {},
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Projetos de destaque',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: SizedBox(
            height: 200,
            child: CarouselView(
              itemSnapping: true,
              itemExtent: 300,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://images.pexels.com/photos/1181675/pexels-photo-1181675.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://images.pexels.com/photos/256541/pexels-photo-256541.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://images.pexels.com/photos/1181263/pexels-photo-1181263.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Projetos de destaque',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: SizedBox(
            height: 200,
            child: CarouselView(
              itemSnapping: true,
              itemExtent: 300,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 227, 167, 238),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange.shade400,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Placeholder(
                    color: Colors.orange.shade100,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.teal.shade400,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Placeholder(
                    color: Colors.teal.shade100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}