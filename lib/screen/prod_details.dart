import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  static const detailsProduct = "/details-page";

  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final productName = routeArguments["name"];
    final productBrand = routeArguments["brand"];
    final productImage = routeArguments["image"];
    final productPrice = routeArguments["price"];
    final productDescription = routeArguments["description"];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          actions: [
            Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
        body: Container(
          color: Colors.blue[300],
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      productBrand!,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          productName!,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Container(
                          height: 100,
                          width: 160,
                          child: Image.network(
                            productImage!,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Price",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "\$ ${productPrice!}",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 420,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text("Color"),
                            SizedBox(
                              width: 150,
                            ),
                            Text("Size")
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "red",
                            style: TextStyle(color: Colors.red),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "blue",
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "green",
                            style: TextStyle(color: Colors.green),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text("12 cm")
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          productDescription!,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                            Text("01"),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.remove)),
                            SizedBox(
                              width: 80,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzfmKfYEeQPCXIj1MXV9isStDPxaOiibkv3A&usqp=CAU"),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          SizedBox(
                            height: 50,
                            width: 90,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[300],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                onPressed: () {},
                                child: Text("Buy now")),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
