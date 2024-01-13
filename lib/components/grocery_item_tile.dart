import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String itemImage;
  final color;

  const GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.itemImage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: color[100], borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(itemImage, height: 64),
            Text(itemName, style: TextStyle(fontSize: 16,),),
            MaterialButton(
              onPressed: () {},
              color: color,
              child: Text(
                "\$ " + itemPrice,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
