import 'package:flutter/material.dart';
import 'package:heo_final_project/model/appbar_model/non_logo_appbar_model.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import '../../constant/constant.dart';
import '../../ext/text_style.dart';

class PersonalCareProducts extends StatefulWidget {
  const PersonalCareProducts({super.key});

  @override
  State<PersonalCareProducts> createState() => _PersonalCareProductsState();
}

class _PersonalCareProductsState extends State<PersonalCareProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NonLogoAppBarModel(
        getTitle: () => "PersonalCareProducts",
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PersonalCareProductsCard("bebek bezi.png", "Bebek Bezi", "15"),
              SizedBox(height: 15),
              PersonalCareProductsCard("kağıt-havlu.png", "Kağıt Havlu", "15"),
              SizedBox(height: 15),
              PersonalCareProductsCard(
                  "kişisel bakım seti.png", "Kişisel Set", "15"),
              SizedBox(height: 15),
              PersonalCareProductsCard("ped.png", "Ped", "15"),
              SizedBox(height: 15),
              PersonalCareProductsCard("sabun.png", "Sabun", "15"),
              SizedBox(height: 15),
              PersonalCareProductsCard(
                  "temizlik malzemeleri.png", "Temizlik Malzemesi", "15"),
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
          .child('Products/Personal Care Products/$imageName');

      imageUrl = await ref.getDownloadURL();
    } catch (e) {
      print('Hata: $e');
    }

    return imageUrl;
  }

  Widget PersonalCareProductsCard(
      String imageName, String title, String price) {
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
