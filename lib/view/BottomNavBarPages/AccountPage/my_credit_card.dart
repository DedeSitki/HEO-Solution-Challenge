import 'package:flutter/material.dart';
import 'package:heo_final_project/constant/constant.dart';
import 'package:heo_final_project/ext/button.dart';
import '../../../ext/text_style.dart';
import '../../../model/appbar_model/non_logo_appbar_model.dart';

class MyCreditCard extends StatefulWidget {
  const MyCreditCard({super.key});

  @override
  State<MyCreditCard> createState() => _MyCreditCardState();
}

class _MyCreditCardState extends State<MyCreditCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.grey300,
      appBar: NonLogoAppBarModel(getTitle: () {
        return "Kredi Kartlarım";
      },),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 70),
          child: Column(
            children: [
              SizedBox(height: 30),
              EmptyCreditCardIcon(),
              SizedBox(height: 40),
              EmtyCreditCardText(),
              SizedBox(height: 20,),
              ExtPageButton.PrimaryButton(() { }, Constant.green500, "Kredi Kartı Ekle")
            ],
          ),
        ),
      ),
    );
  }

  Widget EmptyCreditCardIcon() {
    return Image.asset("assets/icons/credit-card.png",color: Constant.grey700,width: 165);
  }

  Widget EmtyCreditCardText() {
    return Text("Kredi kartı eklemek için tıklayınız",style: ExtPageText.TxtStyle(FontWeight.w500, 13, Constant.grey700),);
  }
}
