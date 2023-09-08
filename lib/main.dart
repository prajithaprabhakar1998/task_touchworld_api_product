import 'package:flutter/material.dart';

import 'package:task_touchworld_api_product/screen/prod_details.dart';
import 'package:task_touchworld_api_product/screen/prod_tile.dart';

import 'package:get/get.dart';
import 'controller/prod_controller.dart';
import 'model/prod_model.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => HomeMain(),
      DetailsPage.detailsProduct: (context) => DetailsPage(),
    },
  ));
}

class HomeMain extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    // var product;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Women",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
        body: Obx(() {
          if (productController.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.builder(
                shrinkWrap: true,
                itemCount: productController.ProductList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return ProductTile(
                      productController.ProductList[index], index);
                });
          }
        }));
  }
}
