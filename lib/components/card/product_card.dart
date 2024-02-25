import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import '../../constant/constant.dart';
import '../../ext/text_style.dart';
import '../../model/product_model/product_model.dart';

class ProductCard extends StatefulWidget {
  Product product;

  ProductCard({
    super.key,
    required this.product,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GrockContainer(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        children: [
          FirsatUrunleri(),
          AddButton(),
        ],
      ),
    );
  }

  Widget FirsatUrunleri() {
    return Row(
      children: [
        ProductImage(),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const SizedBox(height: 8),
              ProductName(),
              const SizedBox(height: 8),
              ProductQuantity(),
            ],
          ),
        ),
      ],
    );
  }

  Widget ProductImage() {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(width: 1, color: Constant.black),
        ),
        child: Hero(
          tag: widget.product.image,
          child: Image.asset(
            widget.product.image,
          ),
        ),
      ),
    );
  }

  Widget ProductName() {
    return Text(
      widget.product.productName,
      style: ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.black),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget ProductQuantity() {
    return Text(
      widget.product.quantity,
      style: ExtPageText.TxtStyle(FontWeight.w400, 14, Constant.grey300),
    );
  }

  Widget AddButton() {
    return Positioned(
      top: 0,
      right: 0,
      child: IconButton(onPressed: () {

      },
      icon: Icon(Icons.add_circle),)
    );
  }
}