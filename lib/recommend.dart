import 'package:flutter/material.dart';

import 'notification.dart';

class Recommend extends StatefulWidget {
  const Recommend({Key key}) : super(key: key);

  @override
  _RecommendState createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 550.0,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.amberAccent,
                  ),
                  Positioned(
                    bottom: 350.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Colors.orange[300].withOpacity(0.4)),
                    ),
                  ),
                  Positioned(
                    bottom: 400.0,
                    left: 150.0,
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Colors.orange[300].withOpacity(0.4)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
                    height: 100.0,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.white,
                          iconSize: 30.0,
                          onPressed: () {},
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (contex) =>
                                              NotificatiosPage()));
                                },
                                icon: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10.0,
                              top: 10.0,
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 15.0,
                                  width: 15.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.5),
                                      color: Colors.red),
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 60.0,
                    child: Container(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top",
                            style: TextStyle(
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30.0),
                          ),
                          Text(
                            "More",
                            style: TextStyle(
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 140.0,
                    child: Container(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      width: MediaQuery.of(context).size.width,
                      height: 400.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return _itemCard("2037", "assets/chair.jpg", "Chair",
                              "This is a Chair");
                        },
                        itemCount: 5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommend",
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30.0),
                    ),
                    Text(
                      "More",
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                width: MediaQuery.of(context).size.width,
                height: 400.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return _itemCard(
                        "4587", "assets/sofas.png", "Sofa", "This is a Sofa");
                  },
                  itemCount: 5,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _itemCard(
    tk,
    url,
    title,
    subtitle,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2.0,
                spreadRadius: 0.9,
              ),
            ]),
        width: 200.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 250.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage(url), fit: BoxFit.fill)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text("TK " + tk),
                    ),
                    IconButton(
                        icon: Icon(Icons.shopping_cart), onPressed: () {}),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 10.0),
              child: Text(
                title,
                style: TextStyle(
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                subtitle,
                style: TextStyle(
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                    fontSize: 15.0),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange.withOpacity(0.4),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "4.3",
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                          fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
