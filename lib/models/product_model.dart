import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.review,
    required this.seller,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}

final List<Product> all = [
  Product(
    title: "Wireless Headphones",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/Wireless Headphones.jpg",
    review: "(320 Reviews)",
    seller: "Tariqul isalm",
    price: 120,
    colors: [Colors.black, Colors.blue, Colors.orange],
    category: "Electronics",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Woman Sweter",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/WomanSweter.jpg",
    review: "(32 Reviews)",
    seller: "Joy Store",
    price: 120,
    colors: [Colors.brown, Colors.deepPurple, Colors.pink],
    category: "Woman Fashion",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Smart Watch",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/SmartWatch.jpg",
    review: "(20 Reviews)",
    seller: "Ram Das",
    price: 55,
    colors: [Colors.black, Colors.amber, Colors.purple],
    category: "Electronics",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Mens Jacket",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/MensJacket.jpg",
    review: "(20 Reviews)",
    seller: "Jacket Store",
    price: 155,
    colors: [Colors.blueAccent, Colors.orange, Colors.green],
    category: "Electronics",
    rate: 5.0,
    quantity: 1,
  ),
   Product(
    title: "Air Jordan",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/shoes/shoes2.jpg",
    review: "(320 Reviews)",
    seller: "The Saller",
    price: 255,
    colors: [Colors.grey, Colors.amber, Colors.purple],
    category: "Shoes",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Woman Shoes",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/shoes/shoes3.jpg",
    review: "(100 Reviews)",
    seller: "Shoes Store",
    price: 500,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Shoes",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Sports Shoes ",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/shoes/shoes1.jpg",
    review: "(60 Reviews)",
    seller: "Hari Store",
    price: 155,
    colors: [Colors.deepPurpleAccent, Colors.orange, Colors.green],
    category: "Shoes",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "Vains Old Skool",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/shoes/shoes5.jpg",
    review: "(60 Reviews)",
    seller: "Hari Store",
    price: 300,
    colors: [Colors.blue, Colors.grey, Colors.green],
    category: "Shoes",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "Face Care Product",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/Beauty.jpg",
    review: "(320 Reviews)",
    seller: "TYojana Seller",
    price: 1500,
    colors: [Colors.pink, Colors.amber, Colors.deepOrangeAccent],
    category: "Beauty",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "conseler",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/beatuy/beauty1.jpg",
    review: "(100 Reviews)",
    seller: "Beautys Store",
    price: 500,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Beauty",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Beauty Store ",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/beatuy/beauty2.jpg",
    review: "(20 Reviews)",
    seller: "Hart Store",
    price: 155,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Beauty",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "LipStic ",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/beatuy/beauty3.jpg",
    review: "(60 Reviews)",
    seller: "Hari Store",
    price: 155,
    colors: [Colors.deepPurpleAccent, Colors.orange, Colors.green],
    category: "Beauty",
    rate: 3.0,
    quantity: 1,
  ),
   Product(
    title: "T-shert",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/womansfafhon/woman1.jpg",
    review: "(320 Reviews)",
    seller: "TYojana Seller",
    price: 1500,
    colors: [Colors.pink, Colors.amber, Colors.deepOrangeAccent],
    category: "Fashion",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Pantlon",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/womansfafhon/woman2.jpg",
    review: "(100 Reviews)",
    seller: "Shoes Store",
    price: 500,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Fashion",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Hegab ",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/womansfafhon/woman3.jpg",
    review: "(20 Reviews)",
    seller: "Hart Store",
    price: 155,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Fashion",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Blouse",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/womansfafhon/woman4.jpg",
    review: "(60 Reviews)",
    seller: "Hari Store",
    price: 155,
    colors: [Colors.deepPurpleAccent, Colors.orange, Colors.green],
    category: "Fashion",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "Pantlon",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/manfashion/man.jpg",
    review: "(320 Reviews)",
    seller: "TYojana Seller",
    price: 1500,
    colors: [Colors.pink, Colors.amber, Colors.deepOrangeAccent],
    category: "Fashion",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "T-shert",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/manfashion/man1.jpg",
    review: "(100 Reviews)",
    seller: "Shoes Store",
    price: 500,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Fashion",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "T-Shirt",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/manfashion/man2.jpg",
    review: "(20 Reviews)",
    seller: "Hart Store",
    price: 155,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Fashion",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Padela",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/manfashion/man3.jpg",
    review: "(60 Reviews)",
    seller: "Hari Store",
    price: 155,
    colors: [Colors.deepPurpleAccent, Colors.orange, Colors.green],
    category: "Fashion",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "Earring",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/jewelry/jewelry.jpg",
    review: "(320 Reviews)",
    seller: "TYojana Seller",
    price: 1500,
    colors: [Colors.pink, Colors.amber, Colors.deepOrangeAccent],
    category: "jewelry",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "jewelry Box",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/jewelry/jewelry1.jpg",
    review: "(100 Reviews)",
    seller: "jewelry Store",
    price: 500,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "jewelry",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "jewelry Store ",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/jewelry/jewelry2.jpg",
    review: "(20 Reviews)",
    seller: "Hart Store",
    price: 155,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "jewelry",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "jewelry Shoes ",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/jewelry/jewelry3.jpg",
    review: "(60 Reviews)",
    seller: "Hari Store",
    price: 155,
    colors: [Colors.deepPurpleAccent, Colors.orange, Colors.green],
    category: "jewelry",
    rate: 3.0,
    quantity: 1,
  ),
];

final List<Product> shoes = [
  Product(
    title: "Air Jordan",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/shoes/shoes2.jpg",
    review: "(320 Reviews)",
    seller: "The Saller",
    price: 255,
    colors: [Colors.grey, Colors.amber, Colors.purple],
    category: "Shoes",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Woman Shoes",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/shoes/shoes3.jpg",
    review: "(100 Reviews)",
    seller: "Shoes Store",
    price: 500,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Shoes",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Sports Shoes ",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/shoes/shoes1.jpg",
    review: "(60 Reviews)",
    seller: "Hari Store",
    price: 155,
    colors: [Colors.deepPurpleAccent, Colors.orange, Colors.green],
    category: "Shoes",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "Vains Old Skool",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/shoes/shoes5.jpg",
    review: "(60 Reviews)",
    seller: "Hari Store",
    price: 300,
    colors: [Colors.blue, Colors.grey, Colors.green],
    category: "Shoes",
    rate: 3.0,
    quantity: 1,
  ),
];

final List<Product> beauty = [
  Product(
    title: "Face Care Product",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/Beauty.jpg",
    review: "(320 Reviews)",
    seller: "TYojana Seller",
    price: 1500,
    colors: [Colors.pink, Colors.amber, Colors.deepOrangeAccent],
    category: "Beauty",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "conseler",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/beatuy/beauty1.jpg",
    review: "(100 Reviews)",
    seller: "Beautys Store",
    price: 500,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Beauty",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Beauty Store ",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/beatuy/beauty2.jpg",
    review: "(20 Reviews)",
    seller: "Hart Store",
    price: 155,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Beauty",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "LipStic ",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/beatuy/beauty3.jpg",
    review: "(60 Reviews)",
    seller: "Hari Store",
    price: 155,
    colors: [Colors.deepPurpleAccent, Colors.orange, Colors.green],
    category: "Beauty",
    rate: 3.0,
    quantity: 1,
  ),
];

final List<Product> Woman = [
  Product(
    title: "T-shert",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/womansfafhon/woman1.jpg",
    review: "(320 Reviews)",
    seller: "TYojana Seller",
    price: 1500,
    colors: [Colors.pink, Colors.amber, Colors.deepOrangeAccent],
    category: "Fashion",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Pantlon",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/womansfafhon/woman2.jpg",
    review: "(100 Reviews)",
    seller: "Shoes Store",
    price: 500,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Fashion",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Hegab ",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/womansfafhon/woman3.jpg",
    review: "(20 Reviews)",
    seller: "Hart Store",
    price: 155,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Fashion",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Blouse",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/womansfafhon/woman4.jpg",
    review: "(60 Reviews)",
    seller: "Hari Store",
    price: 155,
    colors: [Colors.deepPurpleAccent, Colors.orange, Colors.green],
    category: "Fashion",
    rate: 3.0,
    quantity: 1,
  ),
];

final List<Product> man = [
  Product(
    title: "Pantlon",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/manfashion/man.jpg",
    review: "(320 Reviews)",
    seller: "TYojana Seller",
    price: 1500,
    colors: [Colors.pink, Colors.amber, Colors.deepOrangeAccent],
    category: "Fashion",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "T-shert",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/manfashion/man1.jpg",
    review: "(100 Reviews)",
    seller: "Shoes Store",
    price: 500,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Fashion",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "T-Shirt",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/manfashion/man2.jpg",
    review: "(20 Reviews)",
    seller: "Hart Store",
    price: 155,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "Fashion",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Padela",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/manfashion/man3.jpg",
    review: "(60 Reviews)",
    seller: "Hari Store",
    price: 155,
    colors: [Colors.deepPurpleAccent, Colors.orange, Colors.green],
    category: "Fashion",
    rate: 3.0,
    quantity: 1,
  ),
];

final List<Product> jewelry = [
  Product(
    title: "Earring",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/jewelry/jewelry.jpg",
    review: "(320 Reviews)",
    seller: "TYojana Seller",
    price: 1500,
    colors: [Colors.pink, Colors.amber, Colors.deepOrangeAccent],
    category: "jewelry",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "jewelry Box",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/jewelry/jewelry1.jpg",
    review: "(100 Reviews)",
    seller: "jewelry Store",
    price: 500,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "jewelry",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "jewelry Store ",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/jewelry/jewelry2.jpg",
    review: "(20 Reviews)",
    seller: "Hart Store",
    price: 155,
    colors: [Colors.red, Colors.orange, Colors.greenAccent],
    category: "jewelry",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "jewelry Shoes ",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/jewelry/jewelry3.jpg",
    review: "(60 Reviews)",
    seller: "Hari Store",
    price: 155,
    colors: [Colors.deepPurpleAccent, Colors.orange, Colors.green],
    category: "jewelry",
    rate: 3.0,
    quantity: 1,
  ),
];
