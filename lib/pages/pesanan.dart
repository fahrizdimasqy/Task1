import 'package:Task1/pages/list_kode_pesanan.dart';
import 'package:flutter/material.dart';

class Pesanan extends StatelessWidget {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Row(
                children: <Widget>[
                  Container(
                    child: IconButton(
                      color: Colors.grey,
                      icon: Icon(Icons.arrow_back),
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ListKodePesanan();
                      })),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              foregroundDecoration: BoxDecoration(
                  // color: Colors.black26,
                  ),
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 1,
              child: Image.asset(
                'images/qr.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Card(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 130,
                      decoration: BoxDecoration(),
                    ),
                    SizedBox(width: 12.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 200,
                          child: Text(
                            'Kode Pesanan Anda: ',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            child: Text(
                              '7GH12DB',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text('Silahkan selesaikan pembayaran anda'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.popUntil(context, (route) => count++ == 2);
                  },
                  child: Text('Home'),
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
