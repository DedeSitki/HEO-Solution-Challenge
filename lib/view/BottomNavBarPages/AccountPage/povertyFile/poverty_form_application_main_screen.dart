import 'package:flutter/material.dart';
import 'package:heo_final_project/constant/constant.dart';
import 'package:heo_final_project/ext/button.dart';
import 'package:heo_final_project/ext/text_style.dart';
import 'package:heo_final_project/view/BottomNavBarPages/AccountPage/povertyFile/poverty_application_info.dart';
import 'package:heo_final_project/view/BottomNavBarPages/AccountPage/povertyFile/poverty_form_application.dart';
import 'package:path_provider/path_provider.dart';
import '../../../../model/appbar_model/non_logo_appbar_model.dart';
import 'package:grock/grock.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

class PovertyFormApplicationMainScreen extends StatefulWidget {
  const PovertyFormApplicationMainScreen({super.key});

  @override
  State<PovertyFormApplicationMainScreen> createState() =>
      _PovertyFormApplicationMainScreenState();
}

class _PovertyFormApplicationMainScreenState
    extends State<PovertyFormApplicationMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NonLogoAppBarModel(
        getTitle: () => "Poverty Form Application",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 60),
        child: Column(
          children: [
            PovertyMainIcon(),
            SizedBox(
              height: 50,
            ),
            PovertyTitleText(),
            SizedBox(
              height: 60,
            ),
            PovertySubtitle(),
            SizedBox(
              height: 20,
            ),
            HEOPovertyPDF(context),
            SizedBox(
              height: 60,
            ),
            ExtPageButton.leadingButton(() {
              Grock.to(PovertyFormApplication());
            }, Constant.green500, "Belgeyi Yükleme Adımına İlerle",
                Icons.forward, () => Grock.to(PovertyFormApplication())),
            SizedBox(height: 10),
            PovertyInfoText(),
          ],
        ),
      ),
    );
  }

  Widget PovertyTitleText() {
    return Text(
      "Bu kısım yoksulluk başvurusu yapmak isteyen kullanıcılara aittir. Lütfen bilgilerinizi girerken girdiğiniz bilgilerin doğruluğundan emin olunuz!",
      style: ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.black),
      textAlign: TextAlign.center,
    );
  }

  Widget PovertySubtitle() {
    return GrockContainer(
      onTap: () {
        Grock.to(PovertyApplicationInfoScreen());
      },
      child: Text(
        "Başvurularla ilgili genel bilgi almak için tıklayınız.",
        style: ExtPageText.TxtStyle(FontWeight.w500, 13, Constant.blue500),
      ),
    );
  }

  Widget PovertyMainIcon() {
    return Image.asset(
      "assets/icons/poverty.png",
      width: 165,
      color: Constant.grey700,
    );
  }
}

Widget PovertyInfoText() {
  return Text(
    "Yoksulluk başvurusunu yapmak için formu doldurup sisteme yükleyiniz. Başvurunuz incelendikten sonra tarafınızla iletişime geçilecektir.",
    style: ExtPageText.TxtStyle(FontWeight.w400, 13, Constant.grey700),
    textAlign: TextAlign.center,
  );
}

Widget HEOPovertyPDF(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SfPdfViewer.asset("assets/pdf/HEO Yardım Başvuru Formu.pdf"),
            ),
          );
        },
        child: Text('PDF Görüntüle'),
      ),
      SizedBox(width: 10),
      ElevatedButton(
        onPressed: () => _downloadFile(context, "assets/pdf/HEO Yardım Başvuru Formu.pdf"),
        child: Text('PDF İndir'),
      ),
    ],
  );
}

void _downloadFile(BuildContext context, String filePath) async {
  try {
    final savedDir = await getExternalStorageDirectory();
    final path = '${savedDir!.path}/HEO Yardım Başvuru Formu.pdf';
    await FlutterDownloader.enqueue(
      url: 'file:///assets/pdf/HEO Yardım Başvuru Formu.pdf',
      savedDir: savedDir.path,
      fileName: 'HEO Yardım Başvuru Formu.pdf',
      showNotification: true,
      openFileFromNotification: true,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Dosya indirildi')),
    );
  } catch (error) {
    print(error);
  }
}
