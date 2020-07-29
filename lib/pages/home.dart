import 'package:Task1/components/icon_horizontal.dart';
import 'package:Task1/components/my_bottom.dart';
import 'package:Task1/components/product.dart';
import 'package:Task1/components/slide.dart';
import 'package:Task1/pages/keranjang.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  SimpleDialog simpleDialog;
  void dialog() {
    simpleDialog = new SimpleDialog(
      title: new Text('Favorite Item'),
      children: <Widget>[
        new SimpleDialogOption(
          child: new Text('Favorite 1'),
          onPressed: () {
            print('Favorite 1');
          },
        ),
        new SimpleDialogOption(
          child: new Text('Favorite 2'),
          onPressed: () {
            print('Favorite 2');
          },
        ),
        new SimpleDialogOption(
          child: new Text('Close'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
    showDialog(context: context, child: simpleDialog);
  }

  SimpleDialog notif;
  void notification() {
    notif = new SimpleDialog(
      title: new Text('Notifikasi'),
      children: <Widget>[
        new SimpleDialogOption(
          child: new Text('Notif 1'),
          onPressed: () {
            print('Notif 1');
          },
        ),
        new SimpleDialogOption(
          child: new Text('Notif 2'),
          onPressed: () {
            print('Notif 2');
          },
        ),
        new SimpleDialogOption(
          child: new Text('Close'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
    showDialog(context: context, child: notif);
  }

  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
          icon: Icon(
            Icons.file_download,
            size: 50,
            color: Colors.lightBlue,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Keranjang();
            }));
          }),
      key: _scaffoldKey,
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('images/fahriz.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Fahriz Dimasqy',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'dimasqy.fahriz@gmail.com',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
          ),
        ],
      )),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    // padding: EdgeInsets.only(left: 8.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                      ),
                      color: Colors.grey,
                      onPressed: () {
                        _scaffoldKey.currentState.openDrawer();
                      },
                      // tooltip: MaterialLocalizations.of(context)
                      //     .openAppDrawerTooltip,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    // padding: EdgeInsets.only(left: 8.0),
                    child: IconButton(
                      color: Colors.grey,
                      onPressed: () {},
                      icon: Icon(
                        Icons.star,
                      ),
                      iconSize: 40,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    // padding: EdgeInsets.only(left: 8.0),
                    child: IconButton(
                      color: Colors.grey,
                      onPressed: () {
                        dialog();
                      },
                      icon: Icon(
                        Icons.favorite_border,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    // padding: EdgeInsets.only(left: 8.0),
                    child: IconButton(
                      color: Colors.grey,
                      onPressed: () {
                        notification();
                      },
                      icon: Icon(
                        Icons.notifications_none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[200],
              ),
              // padding: EdgeInsets.all(3.0),
              child: Container(
                margin: EdgeInsets.only(left: 10.0),
                child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type something...',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      // fontWeight: FontWeight.,
                    ),
                  ),
                  onChanged: (string) {},
                ),
              ),
            ),
            MySlide(),
            HorizontalIcon(),
            SizedBox(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Makanan',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
            Container(
              height: 320,
              child: Products(),
            )
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigator(),
    );
  }
}
