import 'package:flutter/material.dart';
import 'package:news_app/components/cards.dart';
import 'package:news_app/models/cards_data.dart';
class CardsRow extends StatelessWidget {
  const CardsRow({super.key});
  final List<CardsData> cards = const [
    CardsData(image_path: 'assets/business.png', title: 'business'),
    CardsData(image_path: 'assets/entertaiment.png', title: 'entertainment'),
    CardsData(image_path: 'assets/general.png', title: 'general'),
    CardsData(image_path: 'assets/he.png', title: 'healthy'),
    CardsData(image_path: 'assets/sci.png', title: 'science'),
    CardsData(image_path: 'assets/spo.png', title: 'sport'),
    CardsData(image_path: 'assets/technology.jpeg', title: 'technology'),
  ];

  List<Widget> getnews(List<CardsData> news_data) {
  List<newscards> newscard = []; 

  for (int i = 0; i < news_data.length; ++i) {
    newscard.add(newscards(cardsData: news_data[i]));
  }

  return newscard;
}
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: getnews(cards)),
            );
  }
}