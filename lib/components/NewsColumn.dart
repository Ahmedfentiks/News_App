import 'package:flutter/material.dart';
import 'package:news_app/components/news.dart';
import 'package:news_app/models/news_data.dart';

class Newscolumn extends StatelessWidget {
  List<News_Data> news_data = [];
  
  Newscolumn({super.key , required this.news_data});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: news_data.length, 
      (context, index) {
        return News(news_data: news_data[index]);
      }),
    );
  }
}