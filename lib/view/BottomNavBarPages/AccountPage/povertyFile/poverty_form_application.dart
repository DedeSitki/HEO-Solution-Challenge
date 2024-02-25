import 'dart:io';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:heo_final_project/ext/button.dart';
import 'package:heo_final_project/ext/text_style.dart';
import 'package:heo_final_project/view/BottomNavBarPages/AccountPage/povertyFile/view.dart';
import '../../../../../model/appbar_model/non_logo_appbar_model.dart';
import '../../../../constant/constant.dart';

class PovertyFormApplication extends StatefulWidget {
  const PovertyFormApplication({super.key});

  @override
  State<PovertyFormApplication> createState() => _PovertyFormApplicationState();
}

class _PovertyFormApplicationState extends State<PovertyFormApplication> {
  String url = "";
  int? number;
  uploadDataToFirebase() async {
    //generate random number
    number = Random().nextInt(10);
    //pick pdf file
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    File pick = File(result!.files.single.path.toString());
    var file = pick.readAsBytesSync();
    String name = DateTime.now().millisecondsSinceEpoch.toString();
    //Firebase e yükleme
    var pdfFile = FirebaseStorage.instance.ref().child(name).child("/.pdf");
    UploadTask task = pdfFile.putData(file);
    TaskSnapshot snapshot = await task;
    url = await snapshot.ref.getDownloadURL();
    await FirebaseFirestore.instance
        .collection("file")
        .doc()
        .set({'fileUrl': url, 'num': "Poverity Form#" + number.toString()});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.grey300,
      appBar: NonLogoAppBarModel(
        getTitle: () => "Poverty Form Application",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          children: [
            UploadFileTitle(),
            SizedBox(
              height: 20,
            ),
            PovertyFormFile(),
            ButtonInfoText(),
            SizedBox(
              height: 5,
            ),
            ButtonGif(),
            ExtPageButton.PrimaryButton(() {
              uploadDataToFirebase();
            }, Constant.green500, "Yoksulluk Belgesini Yükle")
          ],
        ),
      ),
    );
  }

  Widget UploadFileTitle() {
    return Text(
      "Yüklediğiniz dosyalara buradan ulaşabilirsiniz",
      style: ExtPageText.TxtStyle(FontWeight.w700, 21, Constant.green500),
      textAlign: TextAlign.center,
    );
  }

  Widget PovertyFormFile() {
    return Expanded(
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("file").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, i) {
                QueryDocumentSnapshot x = snapshot.data!.docs[i];
                return InkWell(
                  onTap: () {
                    Grock.to(ViewPDF(
                      url: x['fileUrl'],
                    ));
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 10, right: 24, left: 24),
                    child: Text(x["num"], textAlign: TextAlign.center),
                  ),
                );
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget ButtonInfoText() {
    return Text(
      "Yoksulluk belgesini yüklemek için aşağıdaki butona tıklayınız",
      style: ExtPageText.TxtStyle(FontWeight.w400, 13, Constant.grey700),
      textAlign: TextAlign.center,
    );
  }

  Widget ButtonGif() {
    return Image.asset(
      "assets/icons/icons8-down.gif",
      width: 50,
    );
  }
}
