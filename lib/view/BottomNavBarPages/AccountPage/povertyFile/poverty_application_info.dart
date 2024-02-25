import 'package:flutter/material.dart';
import 'package:heo_final_project/constant/constant.dart';
import 'package:heo_final_project/ext/text_style.dart';

class PovertyApplicationInfoScreen extends StatefulWidget {
  @override
  State<PovertyApplicationInfoScreen> createState() =>
      _PovertyApplicationInfoScreenState();
}

class _PovertyApplicationInfoScreenState
    extends State<PovertyApplicationInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yoksulluk Başvurusu Bilgilendirme',
            style: ExtPageText.TxtStyle(FontWeight.w600, 18, Constant.white),
            overflow: TextOverflow.fade),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sevgili HEO Kullanıcısı,',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Bu uygulama aracılığıyla yoksulluk başvurusu yapmak istemeniz bizim için önemlidir. Yoksulluk başvurusu, maddi sıkıntı içinde olan bireylerin ve ailelerin sosyal yardımlardan faydalanabilmesi için yapılan bir süreçtir. Başvuru yapmak için lütfen aşağıdaki adımları takip edin:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. Başvuru Şartları:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  '- Başvuruda bulunacak kişi veya aile belirli bir gelir seviyesinin altında olmalıdır.'),
              Text(
                  '- Başvuruda bulunan kişiler, yerel sosyal yardım ofislerince belirlenen kriterlere uygun olmalıdır.'),
              SizedBox(height: 10.0),
              Text(
                '2. Gerekli Belgeler:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('- Kimlik belgesi veya pasaport'),
              Text(
                  '- Gelir belgesi (maaş bordrosu, sosyal yardım belgesi, vb.)'),
              Text('- İkametgah belgesi'),
              Text('- Var ise sağlık raporu'),
              SizedBox(height: 10.0),
              Text(
                '3. Başvuru Yöntemleri:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('- Uygulamamız üzerinden online başvuru yapabilirsiniz.'),
              Text(
                  '- Yerel sosyal yardım ofisine bizzat başvuru yapabilirsiniz.'),
              Text(
                  '- Telefon ile başvuruda bulunmak için müşteri hizmetlerimizi arayabilirsiniz.'),
              SizedBox(height: 10.0),
              Text(
                '4. Başvuru Sonuçları:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  '- Başvurunuz incelendikten sonra, başvuru sonucunuz size en kısa sürede bildirilecektir.'),
              Text(
                  '- Onaylanan başvurulara yönelik yardımlar, belirli aralıklarla belirlenen hesaplarınıza yatırılacaktır.'),
              SizedBox(height: 20.0),
              Text(
                'Unutmayın ki yoksulluk başvurusu süreci, sizin ve ailenizin ihtiyaçlarına yönelik destek alabilmeniz için tasarlanmıştır. Her adımı dikkatlice takip ederek başvurunuzu tamamlamanız, daha hızlı ve etkili bir sonuç almanıza yardımcı olacaktır.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Yardım ve bilgi için her zaman bizimle iletişime geçebilirsiniz.',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Text(
                'Saygılarımla,',
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                'HEO Ekibi',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
