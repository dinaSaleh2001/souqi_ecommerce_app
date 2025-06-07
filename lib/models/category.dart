class Category {
  final String title;
  final String image;

  Category({required this.title, required this.image});
}

final List<Category> categories = [
  Category(title: "All", image: "assets/images/all.jpg"),
  Category(title: "Shoes", image: "assets/images/shoes.jpg"),
  Category(title: "Beauty", image: "assets/images/Beauty.jpg"),
  Category(title: "Women's\nFashon", image: "assets/images/WomenFashion.jpg"),
  Category(title: "Jewelry", image: "assets/images/Jewelry.jpg"),
  Category(title: "Men's\nFashon", image: "assets/images/MenFashion.jpg"),
];
