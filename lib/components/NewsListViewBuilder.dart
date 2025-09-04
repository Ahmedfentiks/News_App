import 'package:flutter/material.dart';
import 'package:news_app/models/news_data.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/components/NewsColumn.dart';



class Newslistviewbuilder extends StatefulWidget {
  final String category;
  const Newslistviewbuilder({Key? key ,required this.category});

  @override
  State<Newslistviewbuilder> createState() => _NewslistviewbuilderState(catagory: category);
}

class _NewslistviewbuilderState extends State<Newslistviewbuilder> {
var future;
String catagory;
_NewslistviewbuilderState({required this.catagory});
  @override
  void initState() {
    super.initState();
    future = NewsService().getnews(catagory);
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<News_Data>>(
      future: future,
      builder: (context, snapshot) {
        return snapshot.hasData
            ? Newscolumn(news_data: snapshot.data!)
            : snapshot.hasError
            ? Center(child: Text('Oops we have error here with data'))
            : SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsetsGeometry.only(top: 200),
                  child: Center(child: CircularProgressIndicator()),
                ),
              );
      },
    );
  }
}
