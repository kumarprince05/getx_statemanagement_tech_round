import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoping_cart_get_x/controllers/cart_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class TotalPrice extends StatelessWidget {
  final CartController  controller = Get.find();
  TotalPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Cart'),
      ),
      body: Obx(
        () => SizedBox(
          height: 80.h,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                2.h.heightBox,
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  height: 9.h,
                  width: 90.w,
                  child: Row(
                    children: [
                      Text('Shipping Address',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                      Container(
                        height: 7.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: TextField(

                        ),

                      )
                    ],
                  ),

                ),

                Divider(
                  color: Colors.grey,
                ),
                Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Item Total',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                        Text('\$ 10',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),


                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Gst Text',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                        Text('\$ 8',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),


                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery Charge',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                        Text('\$ 9',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),


                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',style: TextStyle(
                          color: Colors.amberAccent,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text('\$${controller.total}'
                          ,style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),),

                      ],
                    ),


                    Divider(
                      thickness: 1,
                      color: Colors.grey,

                    ),

                    Text('Pay Now',style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),),


                    2.h.heightBox,





                  ],
                ),
              ],
            ),
          ),
        ),


      ),
    );



  }
}
