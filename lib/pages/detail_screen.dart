import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final nama_detail_makanan;
  final foto_detail_makanan;
  final harga_detail;
  final deskripsi_detail;
  DetailScreen(
      {this.nama_detail_makanan,
      this.foto_detail_makanan,
      this.harga_detail,
      this.deskripsi_detail});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  foregroundDecoration: BoxDecoration(
                    color: Colors.black26,
                  ),
                  height: 400,
                  width: MediaQuery.of(context).size.width / 1,
                  child: Image.network(
                    widget.foto_detail_makanan,
                    fit: BoxFit.cover,
                  ),
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.only(top: 250),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          widget.nama_detail_makanan,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 16.0,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 8.0),
                          ),
                          Spacer(),
                          // FavoriteButton()
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(32.0),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: Colors.blue,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.blue,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.blue,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.blue,
                                          ),
                                          Icon(
                                            Icons.star_border,
                                            color: Colors.blue,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "Rp ${widget.harga_detail}",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              'Description'.toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14.0),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              widget.deskripsi_detail,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 14.0),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                color: Colors.blue,
                                textColor: Colors.white,
                                onPressed: () {},
                                child: Text('Pesan Sekarang'),
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 32.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: AppBar(
                    title: Text(
                      'Detail',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.normal),
                    ),
                    centerTitle: true,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
