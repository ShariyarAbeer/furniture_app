import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key key}) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List picked = [false, false, false];
  int totalAmount = 0;

  pickToggle(index) {
    setState(() {
      picked[index] = !picked[index];
      getTotalAmount();
    });
  }

  getTotalAmount() {}
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
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: double.infinity,
                      ),
                      Container(
                        height: 250,
                        width: double.infinity,
                        color: Colors.amberAccent,
                      ),
                      Positioned(
                        bottom: 550.0,
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
                        bottom: 500.0,
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
                        padding: EdgeInsets.only(top: 15.0),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {},
                        ),
                      ),
                      Positioned(
                        left: 15.0,
                        top: 75.0,
                        child: Text(
                          "Shopping Cart",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      )
                    ],
                  ),
                  Positioned(
                    top: 150.0,
                    child: Column(
                      children: [
                        _cardItem("Wardrobe", "Black", "245",
                            "assets/wardrobe.png", true, 0),
                        _cardItem(
                            "Sofa", "Red", "245", "assets/sofas.png", false, 0),
                        _cardItem(
                            "Desk", "Blue", "245", "assets/desks.png", true, 0),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 620.0, bottom: 15.0),
                    child: Container(
                      height: 50.0,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text('Total: \$' + totalAmount.toString()),
                          SizedBox(width: 10.0),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton.extended(
                              onPressed: () {},
                              elevation: 0.5,
                              label: Text('Pay Now'),
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardItem(String title, String colorr, String price, String url,
      bool available, i) {
    return InkWell(
      onTap: () {
        if (available) {
          pickToggle(i);
        }
      },
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          elevation: 3.0,
          child: Container(
            padding: EdgeInsets.only(left: 15.0, right: 10.0),
            width: MediaQuery.of(context).size.width - 20,
            height: 150.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.white),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: BoxDecoration(
                          color: available
                              ? Colors.grey.withOpacity(0.4)
                              : Colors.red.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(12.5)),
                      child: Center(
                          child: available
                              ? Container(
                                  height: 20.0,
                                  width: 20.0,
                                  decoration: BoxDecoration(
                                      color: picked[i]
                                          ? Colors.yellow
                                          : Colors.grey.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(6.0)),
                                )
                              : Container()),
                    )
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 150.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(url),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(width: 4.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ),
                        SizedBox(width: 7.0),
                        available
                            ? picked[i]
                                ? Text(
                                    'x1',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.grey),
                                  )
                                : Container()
                            : Container()
                      ],
                    ),
                    SizedBox(height: 7.0),
                    available
                        ? Text(
                            'Color: ' + colorr,
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.grey),
                          )
                        : OutlineButton(
                            onPressed: () {},
                            borderSide: BorderSide(
                                color: Colors.red,
                                width: 1.0,
                                style: BorderStyle.solid),
                            child: Center(
                              child: Text('Find Similar',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0,
                                      color: Colors.red)),
                            ),
                          ),
                    SizedBox(height: 7.0),
                    available
                        ? Text(
                            '\$' + price,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Color(0xFFFDD34A)),
                          )
                        : Container(),
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
