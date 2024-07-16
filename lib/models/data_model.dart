import 'package:flutter/material.dart';

class ProductModel {
  final double rating;
  final String style;
  final String madelIn;
  final String name;
  final String manufacturer;
  final String price;
  final String fabricColor;
  final String description;
  final String imageURL;

  ProductModel(
      {required this.rating,
      required this.style,
      required this.madelIn,
      required this.description,
      required this.fabricColor,
      required this.manufacturer,
      required this.name,
      required this.price,
      required this.imageURL});
}

List<ProductModel> productItems = [
  ProductModel(
      rating: 4,
      style: "Modern",
      madelIn: "Japan",
      description: "Sound absorption is a key concept in room acoustics",
      fabricColor: "white",
      manufacturer: "by Carl MH Barenbrug",
      name: "best sofa",
      price: '4999',
      imageURL: "images/best sofa.jpeg"),
  ProductModel(
      rating: 3,
      style: "Home Made",
      madelIn: "India",
      description: "Very heard prouf and best comfatebels",
      fabricColor: "red",
      manufacturer: "by carl MH Barenbrug",
      name: "Living Sofa",
      price: '2999',
      imageURL: "images/living.jpeg"),
  ProductModel(
      rating: 4,
      style: "Modern",
      madelIn: "china",
      description: "Sound absorption is a key concept in room acoustics",
      fabricColor: "white",
      manufacturer: "by Carl MH Barenbrug",
      name: "Two comfatable sofa",
      price: '4999',
      imageURL: "images/two.jpeg"),
  ProductModel(
      rating: 5,
      style: "Home Made",
      madelIn: "India",
      description: "Very heard prouf and best comfatebels",
      fabricColor: "red",
      manufacturer: "by carl MH Barenbrug",
      name: "couton gushan",
      price: '2999',
      imageURL: "images/Please.jpeg"),
  ProductModel(
      rating: 2,
      style: "Modern",
      madelIn: "India",
      description: "Sound absorption is a key concept in room acoustics",
      fabricColor: "white",
      manufacturer: "by Carl MH Barenbrug",
      name: "Grean Heart",
      price: '4999',
      imageURL: "images/f1.jpeg"),
  ProductModel(
      rating: 5,
      style: "Home Made",
      madelIn: "USA",
      description: "Very heard prouf and best comfatebels",
      fabricColor: "red",
      manufacturer: "by carl MH Barenbrug",
      name: "Creasy blue Vel",
      price: '2999',
      imageURL: "images/f2.jpeg"),
  ProductModel(
      rating: 4,
      style: "Modern",
      madelIn: "Thailand",
      description: "Sound absorption is a key concept in room acoustics",
      fabricColor: "white",
      manufacturer: "by Carl MH Barenbrug",
      name: "Grean heart bild",
      price: '4999',
      imageURL: "images/f3.jpeg"),
  ProductModel(
      rating: 3,
      style: "Home Made",
      madelIn: "India",
      description: "Very heard prouf and best comfatebels",
      fabricColor: "red",
      manufacturer: "by carl MH Barenbrug",
      name: "yollow Sofa",
      price: '2999',
      imageURL: "images/f4.jpeg"),
  ProductModel(
      rating: 2,
      style: "Modern",
      madelIn: "Japan",
      description: "Sound absorption is a key concept in room acoustics",
      fabricColor: "white",
      manufacturer: "by Carl MH Barenbrug",
      name: "Orange design",
      price: '4999',
      imageURL: "images/f5.jpeg"),
  ProductModel(
      rating: 3,
      style: "Home Made",
      madelIn: "Englend",
      description: "Very heard prouf and best comfatebels",
      fabricColor: "red",
      manufacturer: "by carl MH Barenbrug",
      name: "Onemane Comfart Sofa",
      price: '2999',
      imageURL: "images/f6.jpeg"),
  ProductModel(
    rating: 4,
    style: "Modern",
    madelIn: "Japan",
    description: "Sound absorption is a key concept in room acoustics",
    fabricColor: "white",
    manufacturer: "by Carl MH Barenbrug",
    name: "Hale prasenting sofa",
    price: '4999',
    imageURL: "images/f7.jpeg",
  ),
];
List<String> categoryList = [
  "Interiors",
  'Furniture',
  'Moods',
  'Creators',
  ' Home Appliances'
];
