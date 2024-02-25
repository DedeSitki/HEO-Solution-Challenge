import 'package:flutter/material.dart';
import 'package:heo_final_project/constant/constant.dart';
import 'package:heo_final_project/ext/text_form_field.dart';
import 'package:heo_final_project/ext/text_style.dart';

import '../../../model/appbar_model/non_logo_appbar_model.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({super.key});

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.grey300,
      appBar: NonLogoAppBarModel(
        getTitle: () {
          return "Uygulama Hakkında";
        },
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              AppLogo(),
              SizedBox(height: 20,),
              AppName(),
              SizedBox(height: 5,),
              AppVersion(),
            ],
          ),
        ),
      ),
    );
  }

  Widget AppLogo() {
    return ClipOval(
        child: Image.asset(
      "assets/images/heo-app-logo.png",
      width: 150,
    ));
  }

  Widget AppName() {
    return Text("HEO",style: ExtPageText.TxtStyle(FontWeight.w600, 21, Constant.black),);
  }

  Widget AppVersion() {
    return Text("0.00.01 v",style: ExtPageText.TxtStyle(FontWeight.w400, 10, Constant.grey700),);
  }
}
