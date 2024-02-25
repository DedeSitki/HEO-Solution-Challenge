import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import '../../model/category_model/category_model.dart';

class CategoryCard extends StatefulWidget {
  CategoryModel categoryModel;
  CategoryCard({
    super.key,
    required this.categoryModel,
  });

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}
class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryImage(),
      ],
    );
  }

  Widget CategoryImage() {
    return GrockContainer(
      onTap: () {},
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: IntrinsicHeight(
        child: Stack(
          alignment: Alignment.bottomRight,
          children :[
            Hero(
              tag: widget.categoryModel.categoryImage,
              child: Image.asset(
                widget.categoryModel.categoryImage,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}