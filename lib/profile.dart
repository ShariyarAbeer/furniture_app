import 'dart:ffi';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                    height: 250,
                    width: double.infinity,
                    color: Colors.amberAccent,
                  ),
                  Positioned(
                    bottom: 300.0,
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
                    bottom: 350.0,
                    left: 150.0,
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Colors.orange[300].withOpacity(0.4)),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 35.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15.0),
                                alignment: Alignment.topLeft,
                                height: 75.0,
                                width: 75.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(37.5),
                                  border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 3.0),
                                  image: DecorationImage(
                                      image: AssetImage("assets/pngegg.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Prio",
                                    style: TextStyle(
                                        fontFamily: "Quicksand",
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("015**568",
                                      style: TextStyle(
                                          fontFamily: "Quicksand",
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w100))
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.settings),
                              onPressed: () {},
                              color: Colors.white,
                              iconSize: 30.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.folder_shared),
                                    color: Colors.white,
                                    iconSize: 40.0,
                                    onPressed: () {}),
                                Text(
                                  "Favorites",
                                  style: TextStyle(
                                      fontFamily: "Quicksand",
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.account_balance_wallet),
                                    color: Colors.white,
                                    iconSize: 40.0,
                                    onPressed: () {}),
                                Text(
                                  "Wallet",
                                  style: TextStyle(
                                      fontFamily: "Quicksand",
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.play_for_work),
                                    color: Colors.white,
                                    iconSize: 40.0,
                                    onPressed: () {}),
                                Text(
                                  "Footprint",
                                  style: TextStyle(
                                      fontFamily: "Quicksand",
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.card_membership),
                                    color: Colors.white,
                                    iconSize: 40.0,
                                    onPressed: () {}),
                                Text(
                                  "Coupon",
                                  style: TextStyle(
                                      fontFamily: "Quicksand",
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10.0,
                              ),
                              _iteamCard("assets/payment.png",
                                  "Pendding Payment", "3"),
                              SizedBox(
                                width: 10.0,
                              ),
                              _iteamCard("assets/transportation.png",
                                  "To be Shipped", "4"),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10.0,
                              ),
                              _iteamCard(
                                  "assets/cargo.png", "To be Received", "15"),
                              SizedBox(
                                width: 10.0,
                              ),
                              _iteamCard(
                                  "assets/package.png", "Return/Replace", "0"),
                              SizedBox(
                                height: 50.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              _itemList("Gift Card", Colors.red, Icons.card_giftcard),
              _itemList("Bank Card", Colors.yellow, Icons.comment_bank),
              _itemList("Resplacement Code", Colors.orange, Icons.restore_page),
              _itemList(
                  "Consulting Collection", Colors.blue, Icons.collections),
              _itemList(
                  "Coustomer Service", Colors.green, Icons.design_services),
              SizedBox(
                height: 50.0,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _itemList(String title, Color buttonColor, iconButton) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: buttonColor.withOpacity(0.2),
                ),
                child: Icon(
                  iconButton,
                  color: buttonColor,
                  size: 25.0,
                )),
            SizedBox(
              width: 25.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 20.0,
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Widget _iteamCard(String url, String title, String number) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(7.0),
      child: Container(
        height: 125.0,
        width: MediaQuery.of(context).size.width / 2 - 20.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Image.asset(
                url,
                fit: BoxFit.cover,
                height: 50.0,
                width: 50.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                number,
                style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 15.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
