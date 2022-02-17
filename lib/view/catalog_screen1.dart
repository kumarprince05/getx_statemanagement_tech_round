import 'package:shoping_cart_get_x/view/screens2.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../widgets/cart_product2.dart';
import '../widgets/catalog_product.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar( title: Text(' Screen 1'),),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 500,
                child: const CatalogProducts()),

            ElevatedButton(onPressed: () => Get.to(() =>
                //MyCart()),
                Cartproducts()),
              child: Text('Add to Cart'),
            ),
            2.h.heightBox,


          ],
        ),
      ),
    );
  }
}
