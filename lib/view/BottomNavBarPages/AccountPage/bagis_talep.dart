import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:heo_final_project/constant/constant.dart';
import 'package:heo_final_project/ext/button.dart';
import '../../../ext/text_style.dart';
import '../../../model/appbar_model/non_logo_appbar_model.dart';

class BagisTalep extends StatefulWidget {
  const BagisTalep({super.key});

  @override
  State<BagisTalep> createState() => _BagisTalepState();
}

class _BagisTalepState extends State<BagisTalep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.grey300,
      appBar: NonLogoAppBarModel(
        getTitle: () {
          return "Bağış Talebi";
        },
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 70),
          child: Column(
            children: [
              SizedBox(height: 30),
              EmptyCharityIcon(),
              SizedBox(height: 60),
              EmptyCharityText(),
              SizedBox(height: 50),
              ExtPageButton.PrimaryButton(
                  () {}, Constant.green500, "Bağış Talep Et"),
              SizedBox(height: 15),
              EmptyCharityText2(),
            ],
          ),
        ),
      ),
    );
  }

  Widget EmptyCharityIcon() {
    return Image.asset(
      "assets/icons/charity.png",
      width: 165,
      color: Constant.grey700,
    );
  }

  Widget EmptyCharityText() {
    return Text("Daha Önce Bağış Talep Etmemişsiniz!",
        style: ExtPageText.TxtStyle(FontWeight.w500, 15, Constant.black));
  }

  Widget EmptyCharityText2() {
    return Row(
      children: [
        Icon(Icons.lock,),
        SizedBox(width: 10),
        Flexible(
          child: Text(
              "Bu kısmı sadece sisteme kayıtlı gelir durumu düşük kişiler kullanabilir.",
              style: ExtPageText.TxtStyle(FontWeight.w500, 13, Constant.grey700),),
        )
      ]
    );
  }
}
