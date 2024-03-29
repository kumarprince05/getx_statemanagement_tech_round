import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:shoping_cart_get_x/models/product_models.dart';


class CartController extends GetxController {

  // add  a dict  to store the products in the cart .

  var _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)){
      _products[product] += 1;
    }else{
      _products[product] = 1;
    }
    Get.snackbar("Product Added",
        "You have added the ${product.name} to the cart ",
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 3),
    );
  }

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] ==1){
      _products.removeWhere((key, value) => key == product);

    }else{
      _products[product] -= 1;

    }
  }

  //get products
  get products => _products;



  //get productSubtotal

  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value).toList();



  //get total

  get total => _products.entries

      .map((product) => product.key.price * product.value)
      .toList().reduce((value, element) => value + element).toStringAsFixed(2);
}