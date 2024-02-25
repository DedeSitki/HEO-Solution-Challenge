import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:heo_final_project/view/products/food_supplies.dart';
import 'package:heo_final_project/view/products/personal_care_products.dart';
import 'package:heo_final_project/view/products/school_supplies.dart';
import '../../components/appbar/custom_appbar.dart';
import '../../components/card/product_card.dart';
import '../../constant/constant.dart';
import '../../ext/text_style.dart';
import '../../model/category_model/home_category.dart';
import '../../model/product_model/home_products_model.dart';
import '../../riverpod/home_riverpod.dart';
import '../products/clothes.dart';

final homeRiverpod = ChangeNotifierProvider((ref) => HomeRiverpod());

class Home extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(homeRiverpod);
    var read = ref.read(homeRiverpod);

    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Constant.grey300,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgroundgrey.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 24, bottom: 0, right: 24),
          child: Column(
            children: [
              AnnounceHomePage(),
              SizedBox(
                height: 15,
              ),
              IhtiyacListesi(read.ihtiyacListesi),
              SizedBox(
                height: 15,
              ),
              CategoryText(),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: CategoryCardBox(read.categoryBox),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget AnnounceHomePage() {
    return Container(
      width: 345,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(150),
        image: DecorationImage(
          image: AssetImage("assets/images/announce.png"),
          fit: BoxFit.cover, // veya BoxFit.fill
        ),
      ),
    );
  }

  Widget IhtiyacListesi(HomeProductModel model) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Text(
                "Yakında Eklenecek Ürünler",
                style: ExtPageText.TxtStyle(
                    FontWeight.w600, 17, Constant.green500),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GestureDetector(
            onTap: () {},
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 103,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 15,
                  ),
                  itemCount: model.products.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 277,
                      child: ProductCard(product: model.products[index]),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget CategoryText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Text("KATEGORİLER",
            style:
                ExtPageText.TxtStyle(FontWeight.w600, 17, Constant.green500)),
      ),
    );
  }

  Widget CategoryCardBox(HomeCategoryModel model) {
    /*return SingleChildScrollView(
      child: Wrap(
        spacing: 15,
        runSpacing: 15,
        runAlignment: WrapAlignment.center,
        children: List.generate(model.categories.length, (index) {
          return GestureDetector(
            onTap: () => Grock.to(ClothesProducts()), // Assuming navigation intent
            child: Container(
              height: 150,
              width: 150,
              child: CategoryCard(categoryModel: model.categories[index]),
            ),
          );
        }),
      ),
    );
  }*/
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Grock.to(ClothesProducts()),
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset("assets/images/clothes.png"),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () => Grock.to(PersonalCareProducts()),
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset("assets/images/personal-care-products.png"),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Grock.to(FoodSupplies()),
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset("assets/images/food-supplies.png"),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () => Grock.to(SchoolSupplies()),
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset("assets/images/school-supplies.png"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
