import 'package:flutter/material.dart';
import 'package:news_app/Models/ArticleModel.dart';

// cached network image
class NewsTile extends StatelessWidget {
  // , required this.articleModel
  const NewsTile({super.key});

  // final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            // for make the image with border
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              // articleModel.image!,
             " ",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          "articleModel.title",
          maxLines: 2,
          overflow: TextOverflow
              .ellipsis, // if the text  is more than 2 lines put (...)
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'articleModel.subTitle ?? ' ',',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
