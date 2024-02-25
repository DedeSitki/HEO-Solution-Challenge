import 'package:flutter/material.dart';
import 'package:heo_final_project/constant/constant.dart';
import 'package:heo_final_project/ext/button.dart';
import 'package:heo_final_project/ext/text_style.dart';
import '../../../model/appbar_model/non_logo_appbar_model.dart';

class MyShipment extends StatefulWidget {
  const MyShipment({super.key});

  @override
  State<MyShipment> createState() => _MyShipmentState();
}

class _MyShipmentState extends State<MyShipment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.grey300,
      appBar: NonLogoAppBarModel(
        getTitle: () {
          return "Siparişlerim";
        },
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 70),
          child: Column(
            children: [
              SizedBox(height: 30),
              ShipmentIcon(),
              SizedBox(
                height: 20,
              ),
              ShipmentEmptyText(),
              SizedBox(
                height: 50,
              ),
              ExtPageButton.PrimaryButton(() {}, Constant.green500, "Bağış Yap")
            ],
          ),
        ),
      ),
    );
  }

  Widget ShipmentIcon() {
    return Image.asset(
      "assets/icons/sent.png",
      width: 165,
      color: Constant.grey700,
    );
  }

  Widget ShipmentEmptyText() {
    return Text(
      "Bağışladığınız Ürün Bulunamadı!",
      style: ExtPageText.TxtStyle(FontWeight.w500, 15, Constant.black),
    );
  }
}
