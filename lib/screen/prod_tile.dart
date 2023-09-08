import 'package:flutter/material.dart';

import 'package:task_touchworld_api_product/screen/prod_details.dart';

import '../model/prod_model.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;
  final int index;

  ProductTile(this.product, this.index);

  void NavDetailsPage(BuildContext context, index) {
    Navigator.of(context).pushNamed(DetailsPage.detailsProduct, arguments: {
      "name": product.name.toString(),
      "brand": product.brand.toString(),
      "image": product.image.toString(),
      "price": product.price.toString(),
      "description": product.description.toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => NavDetailsPage(context, index),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.network(
                product.image ?? "",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    product.name ?? "",
                    style: TextStyle(fontSize: 10),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\$ ${product.price ?? ""}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
