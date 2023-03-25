import 'package:fashion_u/constant/app_assets.dart';
import 'package:flutter/material.dart';

class ShirtModal {
  String? image;
  String? price;
  String? title;
  String? dateTime;
  String? description;
  Color? backColor;
  bool? favourite;

  ShirtModal(
      {this.title,
      this.image,
      this.dateTime,
      this.price,
      this.favourite,
      this.description,
      this.backColor});
}

List<ShirtModal> shirtList = [
  ShirtModal(
      title: "Long Sleeve Shirts",
      price: "₹165",
      favourite: true,
      backColor: const Color(0xffEBEBE9),
      image: AppAssets.longSleeveShirtImage),
  ShirtModal(
      title: "Casual Henley Shirts",
      price: "₹175",
      backColor: const Color(0xffF2F9F7),
      favourite: false,
      image: AppAssets.tShirtImage5),
  ShirtModal(
    title: "Curved Hem Shirts",
    price: "₹100",
    favourite: false,
    image: AppAssets.tShirtImage6,
    backColor: const Color(0xffF5F5F6),
  ),
  ShirtModal(
    title: "Casual Nolin",
    price: "₹100",
    favourite: true,
    image: AppAssets.tShirtImage7,
    backColor: const Color(0xffF9F5F5),
  ),
  ShirtModal(
      title: "Casual Henley Shirts",
      price: "₹155",
      favourite: true,
      backColor: const Color(0xffEBEBE9),
      image: AppAssets.tShirtImage8),
  ShirtModal(
      title: "Long Sleeve Shirts",
      price: "₹175",
      favourite: false,
      backColor: const Color(0xffF5F5F6),
      image: AppAssets.tShirtImage9),
];

class MyCartModal {
  String? image;
  String? price;
  String? title;
  Color? backColor;
  String? qty;

  MyCartModal({this.image, this.title, this.price, this.qty, this.backColor});
}

List<MyCartModal> myCartList = [
  MyCartModal(
    image: AppAssets.tShirtImage1,
    title: "Henley Shirt",
    price: "₹250",
    backColor: const Color(0xffEBEBE9),
    qty: "1",
  ),
  MyCartModal(
    image: AppAssets.tShirtImage2,
    title: "Casual Shirt",
    price: "₹145",
    qty: "2",
    backColor: const Color(0xffF2F9F7),
  ),
  MyCartModal(
    image: AppAssets.tShirtImage3,
    title: "Casual Nolin",
    price: "₹225",
    qty: "2",
    backColor: const Color(0xffF5F5F6),
  ),
  MyCartModal(
    image: AppAssets.tShirtImage4,
    title: "Casual Nolin",
    price: "₹225",
    qty: "2",
    backColor: const Color(0xffF9F5F5),
  ),
];

class MyOrderModal {
  String? image;
  String? price;
  String? title;
  String? dateTime;
  String? description;
  Color? backColor;
  bool? favourite;

  MyOrderModal(
      {this.title,
      this.image,
      this.dateTime,
      this.price,
      this.favourite,
      this.description,
      this.backColor});
}

List<MyOrderModal> myOrderList = [
  MyOrderModal(
    image: AppAssets.tShirtImage1,
    title: "Henley Shirt",
    price: "₹250",
    backColor: const Color(0xffEBEBE9),
    dateTime: "Today",
  ),
  MyOrderModal(
    image: AppAssets.tShirtImage2,
    title: "Casual Shirt",
    price: "₹145",
    dateTime: "20 Jan'2021",
    backColor: const Color(0xffF2F9F7),
  ),
  MyOrderModal(
    image: AppAssets.tShirtImage3,
    title: "Casual Nolin",
    price: "₹225",
    dateTime: "20 Mar'2021",
    backColor: const Color(0xffF5F5F6),
  ),
  MyOrderModal(
    image: AppAssets.tShirtImage4,
    title: "Casual Nolin",
    price: "₹225",
    dateTime: "20 Mar'2021",
    backColor: const Color(0xffF9F5F5),
  ),
];
