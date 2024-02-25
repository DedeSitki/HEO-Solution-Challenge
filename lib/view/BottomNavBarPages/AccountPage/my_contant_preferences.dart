import 'package:flutter/material.dart';
import 'package:heo_final_project/ext/text_style.dart';
import '../../../constant/constant.dart';
import '../../../model/appbar_model/non_logo_appbar_model.dart';

class MyContantPreferences extends StatefulWidget {
  const MyContantPreferences({super.key});

  @override
  State<MyContantPreferences> createState() => _MyContantPreferencesState();
}

class _MyContantPreferencesState extends State<MyContantPreferences> {
  bool e_posta = false;
  bool bildirim = false;
  bool telefon = false;
  bool SMS = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.grey300,
      appBar: NonLogoAppBarModel(getTitle: () {
        return "İletişim Tercihlerim";
      },),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        child: Column(
          children: [
            LVIletisim(
                "E-Posta", "Güncel gelişmeler ile ilgili  e-posta almak istiyorum.", e_posta, (bool value) {
              setState(() {
                e_posta = value;
              });
            }),
            LVIletisim("Bildirim", "Güncel gelişmeler ile ilgili  bildirim almak istiyorum.", bildirim, (bool value) {
              setState(() {
                bildirim = value;
              });
            }),
            LVIletisim("Telefon", "Güncel gelişmeler ile ilgili  cep telefonumdan aranmak istiyorum", telefon, (bool value) {
              setState(() {
                telefon = value;
              });
            }),
            LVIletisim("SMS", "Güncel gelişmeler ile ilgili  cep telefonuma SMS almak istiyorum", SMS, (bool value) {
              setState(() {
                SMS = value;
              });
            }),

          ],
        ),
      ),
    );
  }
  Widget LVIletisim(String LVtitle, String LVsubtitle, bool valuetype, Function(bool) onChanged) {
    return Container(
      color: Constant.white,
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                LVtitle,
                style: ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.black),
              ),
            ),
            subtitle: Text(
              LVsubtitle,
              style: ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.grey700),
            ),
            trailing: Switch(
              activeColor: Constant.green500,
              value: valuetype,
              onChanged: onChanged,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, right: 15, left: 15),
            decoration: BoxDecoration(
              border: Border.all(
                color: Constant.grey300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
