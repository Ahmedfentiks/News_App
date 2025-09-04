import 'package:flutter/material.dart';
import 'package:news_app/components/cards_row.dart';
import 'package:news_app/components/NewsListViewBuilder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('News', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              'Cloud',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 193, 9),
              ),
            ),
          ],
        ),
        titleSpacing: 140,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CardsRow()),
          Newslistviewbuilder(category: 'general'),
        ],
      ),
    );
  }
}
