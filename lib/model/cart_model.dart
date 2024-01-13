import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {

  final List cartList = [
    ["Avocado", "4.5", "lib/images/avocado.png", Colors.green],
    ["Banana", "5.5", "lib/images/banana.png", Colors.orange],
    ["Chicken", "15.5", "lib/images/chicken.png", Colors.amber],
    ["Water", "2.5", "lib/images/water.png", Colors.redAccent],
  ];
}