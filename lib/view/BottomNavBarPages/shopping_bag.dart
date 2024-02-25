import 'package:flutter/material.dart';

import '../../components/appbar/custom_appbar.dart';
import '../../constant/constant.dart';
class ShoppingBag extends StatefulWidget {
  const ShoppingBag({super.key});

  @override
  State<ShoppingBag> createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Constant.grey300,
      body: Center(
        child: Text("Shopping Bag"),
      ),
    );
  }
}
