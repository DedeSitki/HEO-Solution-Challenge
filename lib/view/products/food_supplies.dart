import 'package:flutter/material.dart';
import 'package:heo_final_project/model/appbar_model/non_logo_appbar_model.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import '../../constant/constant.dart';
import '../../ext/text_style.dart';

class FoodSupplies extends StatefulWidget {
  const FoodSupplies({super.key});

  @override
  State<FoodSupplies> createState() => _FoodSuppliesState();
}

class _FoodSuppliesState extends State<FoodSupplies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NonLogoAppBarModel(
        getTitle: () => "Food Supplies",
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FoodSuppliesCard("bakliyat.png", "Bakliyat", "15"),
              SizedBox(height: 15),
              FoodSuppliesCard("seker.png", "Şeker", "15"),
              SizedBox(height: 15),
              FoodSuppliesCard("sivi-yag.png", "Sıvı Yağ", "15"),
              SizedBox(height: 15),
              FoodSuppliesCard("su.png", "Su", "15"),
              SizedBox(height: 15),
              FoodSuppliesCard("un.png", "Un", "15"),
              SizedBox(height: 15),
              FoodSuppliesCard("çay.png", "Çay", "15"),
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
          .child('Products/Food Supplies/$imageName');

      imageUrl = await ref.getDownloadURL();
    } catch (e) {
      print('Hata: $e');
    }

    return imageUrl;
  }

  Widget FoodSuppliesCard(String imageName, String title, String price) {
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
                        SizedBox(
                          height: 30,
                        ),
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
