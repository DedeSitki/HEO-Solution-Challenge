import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grock/grock.dart';
import 'package:heo_final_project/firebase/global/common/toast.dart';
import 'package:heo_final_project/view/BottomNavBarPages/AccountPage/povertyFile/poverty_form_application_main_screen.dart';
import 'package:heo_final_project/view/Log%20In/logInScreen/log_in_screen.dart';
import '../../components/appbar/custom_appbar.dart';
import '../../constant/constant.dart';
import '../../ext/text_style.dart';
import 'AccountPage/about_app.dart';
import 'AccountPage/help.dart';
import 'AccountPage/my_contant_preferences.dart';
import 'AccountPage/bagis_talep.dart';
import 'AccountPage/my_credit_card.dart';
import 'AccountPage/my_favourite_product.dart';
import 'AccountPage/my_info.dart';
import 'AccountPage/my_location.dart';
import 'AccountPage/my_shipment.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Constant.grey300,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 24),
            Bilgilerim(),
            DividerPart(),
            Adreslerim(),
            DividerPart(),
            FavoriUrunlerim(),
            DividerPart(),
            KrediKartlarim(),
            DividerPart(),
            BagisYap(),
            DividerPart(),
            BagisTalepEtme(),
            DividerPart(),
            PovertyForm(),
            DividerPart(),
            IletisimTercihleri(),
            DividerPart(),
            Yardim(),
            DividerPart(),
            UygulamaHakkinda(),
            SizedBox(
              height: 25,
            ),
            _exit(),
          ],
        ),
      ),
    );
  }

  Widget Bilgilerim() {
    return GestureDetector(
      onTap: () {
        Grock.to(MyInfo());
      },
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        width: double.infinity,
        height: 55,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(("assets/icons/info_account.png")),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "Bilgilerim",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.black),
                ),
              ],
            ),
            Image.asset(("assets/icons/forward.png")),
          ],
        ),
      ),
    );
  }

  Widget Adreslerim() {
    return GestureDetector(
      onTap: () {
        Grock.to(MyLocation());
      },
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        width: double.infinity,
        height: 55,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(("assets/icons/location.png")),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "Adreslerim",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.black),
                ),
              ],
            ),
            Image.asset(("assets/icons/forward.png")),
          ],
        ),
      ),
    );
  }

  Widget BagisYap() {
    return GestureDetector(
      onTap: () {
        Grock.to(MyShipment());
      },
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        width: double.infinity,
        height: 55,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(("assets/icons/Shipment.svg")),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "Bagis Yap",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.black),
                ),
              ],
            ),
            Image.asset(("assets/icons/forward.png")),
          ],
        ),
      ),
    );
  }

  Widget FavoriUrunlerim() {
    return GestureDetector(
      onTap: () {
        Grock.to(MyFavouriteProduct());
      },
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        width: double.infinity,
        height: 55,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(("assets/icons/heart.png")),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "Favori Ürünlerim",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.black),
                ),
              ],
            ),
            Image.asset(("assets/icons/forward.png")),
          ],
        ),
      ),
    );
  }

  Widget KrediKartlarim() {
    return GestureDetector(
      onTap: () {
        Grock.to(MyCreditCard());
      },
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        width: double.infinity,
        height: 55,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(("assets/icons/credit_card.png")),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "Kredi Kartlarım",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.black),
                ),
              ],
            ),
            Image.asset(("assets/icons/forward.png")),
          ],
        ),
      ),
    );
  }

  Widget BagisTalepEtme() {
    return GestureDetector(
      onTap: () {
        Grock.to(BagisTalep());
      },
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        width: double.infinity,
        height: 55,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(("assets/icons/coupon.png")),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "Bağış Talep Et",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.black),
                ),
              ],
            ),
            Image.asset(("assets/icons/forward.png")),
          ],
        ),
      ),
    );
  }

  Widget IletisimTercihleri() {
    return GestureDetector(
      onTap: () {
        Grock.to(MyContantPreferences());
      },
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        width: double.infinity,
        height: 55,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(("assets/icons/bell.png")),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "İletişim Tercihleri",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.black),
                ),
              ],
            ),
            Image.asset(("assets/icons/forward.png")),
          ],
        ),
      ),
    );
  }

  Widget PovertyForm() {
    return GestureDetector(
      onTap: () {
        Grock.to(PovertyFormApplicationMainScreen());
      },
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        width: double.infinity,
        height: 55,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(("assets/icons/form.png")),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "Poverty Form",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.black),
                ),
              ],
            ),
            Image.asset(("assets/icons/forward.png")),
          ],
        ),
      ),
    );
  }

  Widget Yardim() {
    return GestureDetector(
      onTap: () {
        Grock.to(Help());
      },
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        width: double.infinity,
        height: 55,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(("assets/icons/help.png")),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "Yardım",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.black),
                ),
              ],
            ),
            Image.asset(("assets/icons/forward.png")),
          ],
        ),
      ),
    );
  }

  Widget UygulamaHakkinda() {
    return GestureDetector(
      onTap: () {
        Grock.to(AboutApp());
      },
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        width: double.infinity,
        height: 55,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(("assets/icons/app_info.png")),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "Uygulama Hakkında",
                  style:
                      ExtPageText.TxtStyle(FontWeight.w600, 16, Constant.black),
                ),
              ],
            ),
            Image.asset(("assets/icons/forward.png")),
          ],
        ),
      ),
    );
  }

  Widget _exit() {
    return GestureDetector(
      onTap: _exitOnTap,
      child: Center(
        child: Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            color: Constant.red500,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              "Çıkış Yap",
              style: ExtPageText.TxtStyle(FontWeight.w600, 20, Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget DividerPart() {
    return Divider(height: 1, color: Colors.transparent);
  }
}

void _exitOnTap() async {
  await FirebaseAuth.instance.signOut();
  Grock.to(LogInScreen());
  showToastCorrect(message: "User sign out succesfully");
}
