import 'package:flutter/material.dart';
import 'package:news_app/Models/cat_model.dart';

class cat_card extends StatelessWidget {
  const cat_card({super.key, required this.catmodel});
  final cat_model catmodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: 190,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage(catmodel.image)),
        borderRadius: BorderRadius.circular(10),
        // color: Colors.green,
      ),
      child: Center(
        child:
            Text(catmodel.cat_name, style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
    );
  }
}
