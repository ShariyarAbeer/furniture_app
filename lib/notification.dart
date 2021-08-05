import 'package:flutter/material.dart';

class NotificatiosPage extends StatefulWidget {
  const NotificatiosPage({Key key}) : super(key: key);

  @override
  _NotificatiosPageState createState() => _NotificatiosPageState();
}

class _NotificatiosPageState extends State<NotificatiosPage> {
  bool fs = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.0, left: 15.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        fs = true;
                        print(fs);
                      },
                      child: Text("hee"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        fs = false;
                        print(fs);
                      },
                      child: Text("hee"),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: fs == true ? Text("jerr") : Text("data"),
              )
            ],
          )
        ],
      ),
    );
  }
}
