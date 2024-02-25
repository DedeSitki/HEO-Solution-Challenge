import 'package:flutter/material.dart';
import 'package:heo_final_project/ext/text_style.dart';
import '../../../constant/constant.dart';
import '../../../model/appbar_model/non_logo_appbar_model.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  List<bool> _isOpen = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.grey300,
      appBar: NonLogoAppBarModel(
        getTitle: () {
          return "Yardım";
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
          child: Column(
            children: [
              HelpPageTitle(),
              SizedBox(height: 30),
              EPHelp(),
            ],
          ),
        ),
      ),
    );
  }

  Widget HelpPageTitle() {
    return Text(
      "Lütfen yardıma ihtiyaç duyduğunuz alanı seçiniz",
      style: ExtPageText.TxtStyle(FontWeight.w500, 15, Constant.black),
    );
  }

  Widget EPHelp() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _isOpen[index] = !isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              leading: Image.asset(
                "assets/icons/question.png",
                width: 35,
                color: Constant.green500,
              ),
              title: Text("Ödeme Sorunları",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w700, 21, Constant.black),
                  textAlign: TextAlign.start),
            );
          },
          body: Column(
            children: [
              ListTile(
                title: Text(
                  "Ödeme Sorunu 1",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
              ListTile(
                title: Text(
                  "Ödeme Sorunu 2",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
              ListTile(
                title: Text(
                  "Ödeme Sorunu 3",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
            ],
          ),
          isExpanded: _isOpen[0],
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              leading: Image.asset(
                "assets/icons/question.png",
                width: 35,
                color: Constant.green500,
              ),
              title: Text("Kullanıcı Sorunları",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w700, 21, Constant.black),
                  textAlign: TextAlign.start),
            );
          },
          body: Column(
            children: [
              ListTile(
                title: Text(
                  "Kullanıcı Sorunları 1",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
              ListTile(
                title: Text(
                  "Kullanıcı Sorunları 2",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
              ListTile(
                title: Text(
                  "Kullanıcı Sorunları 3",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
            ],
          ),
          isExpanded: _isOpen[1],
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              leading: Image.asset(
                "assets/icons/question.png",
                width: 35,
                color: Constant.green500,
              ),
              title: Text("Uygulama Sorunları",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w700, 21, Constant.black),
                  textAlign: TextAlign.start),
            );
          },
          body: Column(
            children: [
              ListTile(
                title: Text(
                  "Uygulama Sorunları 1",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
              ListTile(
                title: Text(
                  "Uygulama Sorunları 2",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
              ListTile(
                title: Text(
                  "Uygulama Sorunları 3",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
            ],
          ),
          isExpanded: _isOpen[2],
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              leading: Image.asset(
                "assets/icons/question.png",
                width: 35,
                color: Constant.green500,
              ),
              title: Text("Ürün Sorunları",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w700, 21, Constant.black),
                  textAlign: TextAlign.start),
            );
          },
          body: Column(
            children: [
              ListTile(
                title: Text(
                  "Ürün Sorunları 1",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
              ListTile(
                title: Text(
                  "Ürün Sorunları 2",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
              ListTile(
                title: Text(
                  "Ürün Sorunları 3",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
            ],
          ),
          isExpanded: _isOpen[3],
        ),
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              leading: Image.asset(
                "assets/icons/question.png",
                width: 35,
                color: Constant.green500,
              ),
              title: Text("Diğer Sorunlar",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w700, 21, Constant.black),
                  textAlign: TextAlign.start),
            );
          },
          body: Column(
            children: [
              ListTile(
                title: Text(
                  "Diğer Sorunlar 1",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
              ListTile(
                title: Text(
                  "Diğer Sorunlar 2",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
              ListTile(
                title: Text(
                  "Diğer Sorunlar 3",
                  style: ExtPageText.TxtStyle(
                      FontWeight.w400, 16, Constant.grey700),
                ),
              ),
            ],
          ),
          isExpanded: _isOpen[4],
        ),
      ],
    );
  }
}
