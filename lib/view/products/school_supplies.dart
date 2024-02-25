import 'package:flutter/material.dart';
import 'package:heo_final_project/constant/constant.dart';
import 'package:heo_final_project/ext/text_style.dart';
import 'package:heo_final_project/model/appbar_model/non_logo_appbar_model.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class SchoolSupplies extends StatefulWidget {
  const SchoolSupplies({super.key});

  @override
  State<SchoolSupplies> createState() => _SchoolSuppliesState();
}

class _SchoolSuppliesState extends State<SchoolSupplies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NonLogoAppBarModel(
        getTitle: () => "SchoolSupplies",
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24,right: 24,top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SchoolSuppliesCard("defter.png", "Defter", "15"),
              SizedBox(height: 15),
              SchoolSuppliesCard("beslenme çantası.png", "Beslenme Çantası", "15"),
              SizedBox(height: 15),
              SchoolSuppliesCard("boya kalemleri.png", "Boya Kalemleri", "15"),
              SizedBox(height: 15),
              SchoolSuppliesCard("kalem.png", "Kalem", "15"),
              SizedBox(height: 15),
              SchoolSuppliesCard("okul çantası.png", "Okul Çantası", "15"),
              SizedBox(height: 15),
              SchoolSuppliesCard("silgi.png", "Silgi", "15"),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> downloadImageUrl(String imageName) async {
    String imageUrl = '';

    try {
      firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('Products/School Suplies/$imageName');

      imageUrl = await ref.getDownloadURL();
    } catch (e) {
      print('Hata: $e');
    }

    return imageUrl;
  }

  Widget SchoolSuppliesCard(String imageName, String title, String price) {
    return FutureBuilder<String>(
      future: downloadImageUrl(imageName),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          String imageUrl = snapshot.data ?? '';

          return Container(
            child: Row(
              children: [
                Image.network(imageUrl),
                Container(
                  height: 165,
                  width: 165,
                  color: Constant.grey300,
                  child: Stack(
                    children: [
                      Column(children: [
                        Center(
                          child: Text(
                            title,
                            style: ExtPageText.TxtStyle(
                                FontWeight.w800, 26, Constant.black),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          price + " tl",
                          style: ExtPageText.TxtStyle(
                              FontWeight.w500, 16, Constant.black),
                        ),
                        SizedBox(height: 30,),
                        Icon(Icons.add_circle),
                      ])
                    ],
                  ),
                )
              ],
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
