import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int photoIndex = 0;
  List<String> photos = [
    "assets/otto2.jpeg",
    "assets/otto3.jpg",
    "assets/otto4.jpg",
    "assets/ottoman.jpg"
  ];

  void _preiousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 275.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(photos[photoIndex]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 275.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),
                    onTap: _nextImage,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 275.0,
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.transparent,
                    ),
                    onTap: _preiousImage,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                            ),
                            color: Colors.black,
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Material(
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 240.0,
                      left: MediaQuery.of(context).size.width / 2 - 30,
                      child: Row(
                        children: [
                          SelectedPhoto(
                            numberofDots: photos.length,
                            photoIndex: photoIndex,
                          )
                        ],
                      ))
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Alicdx Number: 2338X",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontFamily: "Quicksand"),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Finn Navian-Sofa",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Quicksand",
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2 + 30,
                      child: Text(
                        "Scandinavian small size-double sofa/impported full leather/Date italiaoil wax leather black",
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.8),
                          fontFamily: "Quicksand",
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Text(
                      "TK 284",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontFamily: "Quicksand",
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, top: 15.0),
                child: Text(
                  "COLOR",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 22,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.blueGrey),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.grey[300]),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            width: 15.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 15.0),
            child: Text(
              "MATERIAL",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 22,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: Icon(
                    Icons.cloud_outlined,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "X3",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Quicksand",
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: Icon(
                    Icons.system_update,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "2D",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Quicksand",
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: Icon(
                    Icons.computer_outlined,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "C4",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Quicksand",
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15.0,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Material(
        elevation: 7.0,
        color: Colors.white,
        child: Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 10.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.white,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.grey,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.white,
                  child: Icon(
                    Icons.account_tree,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 30.0),
                width: MediaQuery.of(context).size.width - 130.0,
                color: Colors.orangeAccent,
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Quicksand",
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberofDots;
  final int photoIndex;

  const SelectedPhoto({Key key, this.numberofDots, this.photoIndex})
      : super(key: key);

  Widget _inactivePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          width: 8.0,
          height: 8.0,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(4.0)),
        ),
      ),
    );
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.0,
                  blurRadius: 2.0,
                )
              ]),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];
    for (int i = 0; i < numberofDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}
