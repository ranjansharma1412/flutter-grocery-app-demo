import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List cartList = [
    ["Avocado", "4.5", "lib/images/avocado.png", Colors.green],
    ["Banana", "5.5", "lib/images/banana.png", Colors.orange],
    ["Chicken", "15.5", "lib/images/chicken.png", Colors.amber],
    ["Water", "2.5", "lib/images/water.png", Colors.redAccent],
  ];

  List _cartItem = [];

  get shopItem => cartList;

  get cartItem => _cartItem;

  void addCartItem(int index) {
    _cartItem.add(cartList[index]);
    notifyListeners();
  }

  void removeCartItem(int index) {
    _cartItem.removeAt(index);
    notifyListeners();
  }

  String calculateTotalPrice() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItem.length; i++) {
      totalPrice += double.parse(_cartItem[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
