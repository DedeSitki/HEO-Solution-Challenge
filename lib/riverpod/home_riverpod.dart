import 'package:flutter/material.dart';
import '../model/category_model/category_model.dart';
import '../model/category_model/home_category.dart';
import '../model/product_model/home_products_model.dart';
import '../model/product_model/product_model.dart';


class HomeRiverpod extends ChangeNotifier {
  HomeProductModel ihtiyacListesi = HomeProductModel(products: [
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/milk.jpg",
      productName: "Süt",
      productDesc: "Süt Ürünü",
      quantity: "112",
      price: "23",
    ),
    Product(
      image: "assets/images/olive-oil.jpg",
      productName: "Zeytinyağı",
      productDesc: "Zeytinyağı Ürünü",
      quantity: "30",
      price: "152",
    )
  ]);
  /*HomeProductModel food_supplies = HomeProductModel(products: [
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/milk.jpg",
      productName: "Süt",
      productDesc: "Süt Ürünü",
      quantity: "112",
      price: "23",
    ),
    Product(
      image: "assets/images/olive-oil.jpg",
      productName: "Zeytinyağı",
      productDesc: "Zeytinyağı Ürünü",
      quantity: "30",
      price: "152",
    )
  ]);
  HomeProductModel clothes = HomeProductModel(products: [
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/milk.jpg",
      productName: "Süt",
      productDesc: "Süt Ürünü",
      quantity: "112",
      price: "23",
    ),
    Product(
      image: "assets/images/olive-oil.jpg",
      productName: "Zeytinyağı",
      productDesc: "Zeytinyağı Ürünü",
      quantity: "30",
      price: "152",
    )
  ]);
  HomeProductModel personal_care_products = HomeProductModel(products: [
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/milk.jpg",
      productName: "Süt",
      productDesc: "Süt Ürünü",
      quantity: "112",
      price: "23",
    ),
    Product(
      image: "assets/images/olive-oil.jpg",
      productName: "Zeytinyağı",
      productDesc: "Zeytinyağı Ürünü",
      quantity: "30",
      price: "152",
    )
  ]);
  HomeProductModel school_supplies = HomeProductModel(products: [
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/eggs.jpg",
      productName: "Yumurta",
      productDesc: "Yumurta Ürünü",
      quantity: "45",
      price: "45",
    ),
    Product(
      image: "assets/images/milk.jpg",
      productName: "Süt",
      productDesc: "Süt Ürünü",
      quantity: "112",
      price: "23",
    ),
    Product(
      image: "assets/images/olive-oil.jpg",
      productName: "Zeytinyağı",
      productDesc: "Zeytinyağı Ürünü",
      quantity: "30",
      price: "152",
    )
  ]);*/

  HomeCategoryModel categoryBox = HomeCategoryModel(categories: [
    CategoryModel(
        categoryImage: "assets/images/food-supplies.png",
        categoryDetails: [],
        categoryName: "Food Supplies"),
    CategoryModel(
        categoryImage: "assets/images/clothes.png",
        categoryDetails: [],
        categoryName: "Clothes"),
    CategoryModel(
        categoryImage: "assets/images/personal-care-products.png",
        categoryDetails: [],
        categoryName: "Personal Care Products"),
    CategoryModel(
        categoryImage: "assets/images/school-supplies.png",
        categoryDetails: [],
        categoryName: "School Supplies"),
  ]);
}
