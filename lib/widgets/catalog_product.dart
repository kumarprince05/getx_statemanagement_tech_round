import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:shoping_cart_get_x/controllers/cart_controller.dart';
import 'package:shoping_cart_get_x/models/product_models.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cart_product2.dart';
//import 'package:shoping_cart_get_x/controllers/cart_controller.dart;

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          SizedBox(
            height: 30.h,
              child: ListView.builder(
                itemCount: Product.products.length,
                  itemBuilder: (BuildContext context ,int index) {
                  return CatalogProductCart(index: index);
                  }
              )),

        ],
      ),
    );
  }
}

class CatalogProductCart extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
   CatalogProductCart({Key? key, required this.index,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      vertical: 10.0
    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(Product.products[index].imageUrl,
            ),
          ),
          SizedBox(width: 30,),
          Expanded(child: Text(Product.products[index].name,
            style:
            TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
          Expanded(child: Text('${Product.products[index].price}')),
          IconButton(onPressed: () {
            cartController.addProduct(Product.products[index]);
          },
              icon: Icon(Icons.add_circle),
          ),
        ],
      ),
    );
  }
}

