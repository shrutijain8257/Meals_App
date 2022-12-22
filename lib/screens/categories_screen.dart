import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      children: Dummy_categories.map(
        (catData) => CategoryItem(catData.id, catData.title, catData.color),
      ).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3 / 2, // for 200 width the height would be 300
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
