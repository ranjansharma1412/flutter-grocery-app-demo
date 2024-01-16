import 'package:flutter/material.dart';
import 'package:grossary_app_demo/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My cart list')),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(8.5),
              child: Consumer<CartModel>(builder: (context, value, child) {
                return Column(
                  children: [
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.cartItem.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.4),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(12)),
                                  child: ListTile(
                                    leading: Image.asset(
                                        value.cartItem[index][2],
                                        height: 36),
                                    title: Text(value.cartItem[index][0]),
                                    subtitle:
                                        Text('\$ ${value.cartItem[index][1]}'),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.cancel),
                                      onPressed: () {
                                        Provider.of<CartModel>(context,
                                                listen: false)
                                            .removeCartItem(index);
                                      },
                                    ),
                                  ),
                                ),
                              );
                            })),
                    //Pay Now button
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 14),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Total price',
                                  style: TextStyle(
                                      color: Colors.green[100], fontSize: 16)),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  '\$ ${value.calculateTotalPrice()}',
                                  style: TextStyle(
                                      color: Colors.green[100],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              )
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.green.shade100, width: 2),
                                borderRadius: BorderRadius.circular(12)),
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                Text(
                                  'Pay now',
                                  style: TextStyle(color: Colors.green[100]),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                );
              }))),
    );
  }
}
