import 'package:flutter/material.dart';
import 'package:furniture_app/profile.dart';

import 'productPage.dart';
import 'recommend.dart';
import 'shoppingCart.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [
          Center(
            child: ListView(
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
                          bottom: 50.0,
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
                          bottom: 100.0,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 25.0),
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    height: 50.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.0),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          width: 2.0),
                                      image: DecorationImage(
                                        image: AssetImage("assets/chris.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    icon: Icon(Icons.menu),
                                    onPressed: () {},
                                    color: Colors.white,
                                    iconSize: 30.0,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 35.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: Text(
                                "Hello , Pino",
                                style: TextStyle(
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0,
                                  // color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: Text(
                                "What do you want to buy?",
                                style: TextStyle(
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.0,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25.0, right: 25.0),
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(5.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.amber,
                                        size: 30.0,
                                      ),
                                      contentPadding: EdgeInsets.only(
                                          left: 15.0, top: 15.0),
                                      hintText: "Search",
                                      hintStyle: TextStyle(
                                          fontFamily: "Quicksand",
                                          color: Colors.grey)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Material(
                          elevation: 1.0,
                          child: Container(
                            height: 75.0,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 75.0,
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                children: [
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/sofas.png"),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Sofa",
                                    style: TextStyle(fontFamily: "Quicksand"),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 75.0,
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                children: [
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/wardrobe.png"),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Wardrobe",
                                    style: TextStyle(fontFamily: "Quicksand"),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 75.0,
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                children: [
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/desks.png"),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Desk",
                                    style: TextStyle(fontFamily: "Quicksand"),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 75.0,
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                children: [
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/dressers.png"),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Dresser",
                                    style: TextStyle(fontFamily: "Quicksand"),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductPage(),
                          ),
                        );
                      },
                      child: _itemCard("FinnNavian", "assets/ottoman.jpg", true,
                          "230", "This is a new sofa"),
                    ),
                    InkWell(
                      child: _itemCard("Sofa Chair", "assets/sofa.png", false,
                          "458", "This is a new Sofa Chair"),
                    ),
                    InkWell(
                      child: _itemCard("Chair", "assets/chair.jpg", true, "580",
                          "This is a new Chair"),
                    ),
                  ],
                )
              ],
            ),
          ),
          Center(
            child: Recommend(),
          ),
          Center(
            child: ShoppingCart(),
          ),
          Center(
            child: Profile(),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.black,
        child: TabBar(
          controller: tabController,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0)),
              color: Colors.white),
          indicatorColor: Colors.black,
          unselectedLabelColor: Colors.black,
          labelColor: Colors.black,
          tabs: [
            Tab(
              icon: Icon(Icons.event_seat, color: Colors.orange),
            ),
            Tab(
              icon: Icon(
                Icons.recommend,
                color: Colors.orange,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.orange,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person_outline,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemCard(
      String title, String url, bool isFav, String price, String data) {
    return Padding(
      padding:
          EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
      child: Container(
        height: 150.0,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(url), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 45.0,
                    ),
                    Material(
                      elevation: isFav ? 2.0 : 0.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: isFav
                              ? Colors.white
                              : Colors.grey.withOpacity(0.2),
                        ),
                        child: Center(
                          child: isFav
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : Icon(
                                  Icons.favorite_border,
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  data,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Container(
                      height: 40.0,
                      width: 50.0,
                      color: Colors.amberAccent,
                      child: Center(
                        child: Text(
                          price,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 100.0,
                      color: Colors.amberAccent.withOpacity(0.8),
                      child: Center(
                        child: Text(
                          "Add to cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
