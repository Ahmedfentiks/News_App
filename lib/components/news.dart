import 'package:flutter/material.dart';
import 'package:news_app/models/news_data.dart';
class News extends StatelessWidget {
  const News({required this.news_data});

  final News_Data news_data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3)),
            image: DecorationImage(
              image: NetworkImage(
                news_data.image_path ?? 'https://community-assets.home-assistant.io/original/4X/6/f/b/6fb73a398857333f2c860748183d072754fd4c21.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          margin: EdgeInsets.only(right: 10, left: 10 , top:20),
          width: 360,
          height: 200,
        ),

        Padding(
          padding: EdgeInsetsGeometry.only(right: 15, left: 15 , top: 10),
          child: Text(
            news_data.main_title,
            textAlign: TextAlign.right,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),

        Padding(
          padding: EdgeInsetsGeometry.only(right: 15, left: 15 , top: 10),
          child: Text(
            news_data.description ?? '',
            textAlign: TextAlign.right,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
