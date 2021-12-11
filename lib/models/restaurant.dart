import './food.dart';

class Restaurant {
  // Khoi tao thuoc tinh
  final String imageUrl;
  final String name;
  final String address;
  final int rating;
  final List<Food> menu;

  // Khoi tao phuong thuc
  Restaurant(
      {required this.imageUrl,
      required this.name,
      required this.address,
      required this.rating,
      required this.menu});
}
