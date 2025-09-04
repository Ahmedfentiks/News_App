import 'package:flutter/material.dart';
import 'package:news_app/models/cards_data.dart';
import 'package:news_app/pages/category_view.dart';
class newscards extends StatelessWidget {
  const newscards({required this.cardsData});
  final CardsData cardsData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: 
          (context){
            return CategoryView(category: cardsData.title);
          }
          ));
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(cardsData.image_path),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 135,
        width: 230,
        margin: EdgeInsets.only(left: 18, right: 5, top: 10),
        child: Center(
          child: Text(
            cardsData.title,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
