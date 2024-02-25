import 'package:flutter/material.dart';
import 'package:heo_final_project/ext/button.dart';
import 'package:heo_final_project/ext/text_form_field.dart';
import '../../../constant/constant.dart';
import '../../../model/appbar_model/non_logo_appbar_model.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({super.key});

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _fullnameController = TextEditingController(text: "Sıtkı Dede");
    final TextEditingController _birthdayDateController =
        TextEditingController(text: "06/08/2000");
    final TextEditingController _cellPhoneController = TextEditingController(text: "(507) 887 1701");
    return Scaffold(
      backgroundColor: Constant.grey300,
      appBar: NonLogoAppBarModel(
        getTitle: () {
          return "Bilgilerim";
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: [
            ExtPageTFF.UsualTFF(_fullnameController, Constant.green500,
                "Name Surname", "Name Surname", Icons.account_box_sharp),
            SizedBox(
              height: 10,
            ),
            ExtPageTFF.UsualTFF(_birthdayDateController, Constant.green500,
                "Birthday Date", "Birthday Date", Icons.calendar_month),
            SizedBox(
              height: 10,
            ),
            ExtPageTFF.UsualTFF(_cellPhoneController, Constant.green500,
                "Cell Phone", "Cell Phone", Icons.phone),
            SizedBox(height: 30,),
            ExtPageButton.PrimaryButton(() { }, Constant.green500, "Kaydet")
          ],
        ),
      ),
    );
  }
}
