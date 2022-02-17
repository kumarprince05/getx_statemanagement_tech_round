import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping_cart_get_x/models/product_models.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/cart_controller.dart';
import 'cart_total.dart';

class Cartproducts extends StatelessWidget {
  final  CartController controller = Get.find();
   Cartproducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text('Screen 3'),
          centerTitle: true,
        ),
       // backgroundColor: Colors.black,
        body: Obx(()=>
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 600,
                child: ListView.builder(
                  itemCount: controller.products.length,
                    itemBuilder: (BuildContext context, int index) {
                    return CartProductCard(
                      controller: controller,
                      product:  controller.products.keys.toList()[index],
                      quantity: controller.products.values.toList()[index],
                      index: index,
                    );

                    }
                ),

              ),

              ElevatedButton(
                onPressed: () =>
                    Get.to(() =>TotalPrice()),
                child: Text('Go to Cart'),
              ),

              2.h.heightBox,
            ],
          ),
        ),

    ),
      );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;
  const CartProductCard({
    Key? key,
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              product.imageUrl,
            ),
          ),
          SizedBox(width: 20,),
          Expanded(child: Text(product.name),
          ),
          IconButton(onPressed: () {
            controller.removeProduct(product);
          }, icon: Icon(Icons.remove_circle),
          ),
          Text('$quantity'),

          IconButton(onPressed: () {
            controller.addProduct(product);
          }, icon: Icon(Icons.add_circle))

        ],
      ),
    );
  }
}

