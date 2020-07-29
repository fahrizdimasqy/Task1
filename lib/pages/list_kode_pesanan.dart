import 'package:Task1/pages/pembayaran_sukses.dart';
import 'package:Task1/pages/pembayaran_waiting.dart';
import 'package:Task1/pages/pesanan.dart';
import 'package:flutter/material.dart';

class ListKodePesanan extends StatefulWidget {
  @override
  _ListKodePesananState createState() => _ListKodePesananState();
}

class _ListKodePesananState extends State<ListKodePesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PembayaranWaiting();
                }));
              },
              child: Card(
                color: Colors.lightBlueAccent,
                child: Row(
                  children: <Widget>[
                    Container(
                      // width: 130,
                      height: 100,
                    ),
                    SizedBox(width: 12.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 250,
                          child: Text(
                            'Kode Pesanan 7GH12DB',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: Text(
                            '20/07/2010 10:00:00',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 200,
                            ),
                            Text(
                              'Menunggu Pembayaran',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PemabayaranSukses();
                }));
              },
              child: Card(
                color: Colors.lightBlueAccent,
                child: Row(
                  children: <Widget>[
                    Container(
                      // width: 130,
                      height: 100,
                    ),
                    SizedBox(width: 12.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 250,
                          child: Text(
                            'Kode Pesanan 7GH12DB',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: Text(
                            '20/07/2010 10:00:00',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 290,
                            ),
                            Text(
                              'Sukses!',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    ));
  }
}
