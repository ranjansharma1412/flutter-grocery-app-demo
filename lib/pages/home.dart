import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grossary_app_demo/components/grocery_item_tile.dart';
import 'package:grossary_app_demo/model/cart_model.dart';
import 'package:grossary_app_demo/pages/cart_page.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return CartPage();
            }));
          },
          backgroundColor: Colors.yellow,
          child: const Icon(Icons.shopping_bag),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Good morning!",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Let's order fresh item for you",
                  style: GoogleFonts.notoSerif(
                      fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Divider(
                  thickness: 2,
                ),
              ),
              const SizedBox(height: 5),
              Expanded(child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                      itemCount: value.cartList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1 / 1.3, crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return GroceryItemTile(
                          itemName: value.cartList[index][0],
                          itemPrice: value.cartList[index][1],
                          itemImage: value.cartList[index][2],
                          color: value.cartList[index][3],
                          onPressed: (){
                            Provider.of<CartModel>(context, listen: false).addCartItem(index);
                          },
                        );
                      });
                },
              )),
            ],
          ),
        ));
  }
}
