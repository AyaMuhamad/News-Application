import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/cat_model.dart';
import 'package:news_app/widgets/Category_Card.dart';
import 'package:news_app/widgets/news_tile.dart';
import '../widgets/cat_list_view.dart';

class home_view extends StatelessWidget {
  home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Cloud ",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: Cat_list_view()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
              
              (context, index) {
                return NewsTile();
              },
            ))
            // NewsListViewBuilder(
            //   category: 'general',
            // ),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 32,
        //     ),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}
