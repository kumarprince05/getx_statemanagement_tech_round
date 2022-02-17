import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:sizer/sizer.dart';

import '../widgets/cart_total.dart';
import '../widgets/catalog_product.dart';
import 'package:velocity_x/velocity_x.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My cart'),
      ),

      body: SizedBox(
        height: 56.h,
        child: Column(
          children: [
            CatalogProducts(),
            TotalPrice(),
            2.h.heightBox,

          ],
        ),
      ),
    );
  }
}
