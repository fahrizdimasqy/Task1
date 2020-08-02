import 'package:flutter/material.dart';

class MySlide extends StatefulWidget {
  @override
  _MySlideState createState() => _MySlideState();
}

class _MySlideState extends State<MySlide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width / 1,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(horizontal: 8),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'KULINA BOX DELUXE',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Manjakan Selera',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Makan Anda',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1),
                  Divider(
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(horizontal: 8),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'PAKET ACARA',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Sajian Tepat',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Segala Acara',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1),
                  Divider(
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(horizontal: 8),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'KULINA BOX DELUXE',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Menu Hemat dan',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Berkualitas',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1),
                  Divider(
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
