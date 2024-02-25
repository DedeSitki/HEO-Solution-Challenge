import 'package:flutter/material.dart';
import 'package:heo_final_project/constant/constant.dart';
import 'package:heo_final_project/ext/button.dart';
import 'package:heo_final_project/ext/text_style.dart';
import '../../../model/appbar_model/non_logo_appbar_model.dart';

class MyLocation extends StatefulWidget {
  const MyLocation({super.key});

  @override
  State<MyLocation> createState() => _MyLocationState();
}

class _MyLocationState extends State<MyLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.grey300,
      appBar: NonLogoAppBarModel(
        getTitle: () {
          return "Adreslerim";
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 70),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            locationIcon(),
            SizedBox(
              height: 30,
            ),
            locationText(),
            SizedBox(
              height: 50,
            ),
            ExtPageButton.PrimaryButton(
                () {}, Constant.green500, "Teslimat Adresi Ekle")
          ],
        ),
      ),
    );
  }

  Widget locationIcon() {
    return Image.asset(
      "assets/icons/Map-Location.png",
      width: 165,
      color: Constant.grey700,
    );
  }

  Widget locationText() {
    return Text(
      "Teslimat adresiniz bulunmamaktadır",
      style: ExtPageText.TxtStyle(FontWeight.w500, 15, Constant.black),
    );
  }
}
