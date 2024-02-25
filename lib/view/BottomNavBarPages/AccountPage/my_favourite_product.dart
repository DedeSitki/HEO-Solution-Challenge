import 'package:flutter/material.dart';
import 'package:heo_final_project/constant/constant.dart';
import '../../../ext/text_style.dart';
import '../../../model/appbar_model/non_logo_appbar_model.dart';

class MyFavouriteProduct extends StatefulWidget {
  const MyFavouriteProduct({super.key});

  @override
  State<MyFavouriteProduct> createState() => _MyFavouriteProductState();
}

class _MyFavouriteProductState extends State<MyFavouriteProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.grey300,
      appBar: NonLogoAppBarModel(
        getTitle: () {
          return "Favori Ürünlerim";
        },
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 70),
          child: Column(
            children: [
              SizedBox(height: 30),
              EmptyFovouriteProductIcon(),
              SizedBox(height: 40),
              EmptyFovouriteProductText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget EmptyFovouriteProductIcon() {
    return Image.asset(
      "assets/icons/touch.png",
      width: 165,
    );
  }

  Widget EmptyFovouriteProductText() {
    return Column(children: [
      Text("Favori Ürününüz Yok!",
          style: ExtPageText.TxtStyle(FontWeight.w500, 15, Constant.black)),
      SizedBox(height: 20),
      Text(
          "Favorilere ürün eklemek isterseniz ürünlerin üzerindeki kalp butonuna dokunun",
          textAlign: TextAlign.center,
          style: ExtPageText.TxtStyle(FontWeight.w500, 13, Constant.grey700))
    ]);
  }
}
