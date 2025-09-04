import 'package:flutter/material.dart';
import 'package:news_app/components/NewsListViewBuilder.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(width: 5),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              iconSize: 30,
              hoverColor: Colors.blueGrey,
            ),
            SizedBox(width: 5),
            Text(
              'Back',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
        leadingWidth: 200,
      ),
      body: CustomScrollView(
        slivers: [Newslistviewbuilder(category: category)],
      ),
    );
  }
}
