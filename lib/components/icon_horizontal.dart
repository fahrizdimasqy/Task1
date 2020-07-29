import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HorizontalIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            margin: EdgeInsets.only(top: 20.0),
            child: Text(
              'Pilih Kategori',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      'icon/percent.png',
                      width: 50,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text('Diskon'),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    // Text(place.openDays),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.asset(
                      'icon/dollar.png',
                      width: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text('Terlaris'),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    // Text(place.openDays),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.asset(
                      'icon/users.png',
                      width: 50,
                      color: Colors.lightGreen,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text('Terfavorit'),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    // Text(place.openDays),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.asset(
                      'icon/coffee.png',
                      width: 50,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text('Terhemat'),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    // Text(place.openDays),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
