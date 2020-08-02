import 'package:Task1/pages/pesanan.dart';
import 'package:flutter/material.dart';

class Keranjang extends StatefulWidget {
  @override
  _KeranjangState createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  final _formKey = GlobalKey<FormState>();
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
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Keranjang',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          Stack(
            children: <Widget>[
              Card(
                color: Colors.lightBlueAccent,
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'images/burger.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Burger',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Rp. 15000',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 15.0),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  content: Stack(
                                                    overflow: Overflow.visible,
                                                    children: <Widget>[
                                                      Positioned(
                                                        right: -40.0,
                                                        top: -40.0,
                                                        child: InkResponse(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: CircleAvatar(
                                                            child: Icon(
                                                                Icons.close),
                                                            backgroundColor:
                                                                Colors.red,
                                                          ),
                                                        ),
                                                      ),
                                                      Form(
                                                        key: _formKey,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: <Widget>[
                                                            Text('Catatan'),
                                                            Divider(),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Container(
                                                                  child:
                                                                      TextFormField(
                                                                textInputAction:
                                                                    TextInputAction
                                                                        .newline,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .multiline,
                                                                maxLines: null,
                                                              )),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  vertical:
                                                                      15.0,
                                                                  horizontal:
                                                                      22.0),
                                                              child: SizedBox(
                                                                width: double
                                                                    .infinity,
                                                                child:
                                                                    RaisedButton(
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0)),
                                                                  color: Colors
                                                                      .blue,
                                                                  textColor:
                                                                      Colors
                                                                          .white,
                                                                  onPressed:
                                                                      () {
                                                                    if (_formKey
                                                                        .currentState
                                                                        .validate()) {
                                                                      _formKey
                                                                          .currentState
                                                                          .save();
                                                                    }
                                                                  },
                                                                  child: Text(
                                                                      'Simpan'),
                                                                  padding: EdgeInsets.symmetric(
                                                                      vertical:
                                                                          16.0,
                                                                      horizontal:
                                                                          32.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                        child: Container(
                                          width: 20.0,
                                          height: 20.0,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: Icon(
                                            Icons.edit,
                                            size: 15.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          width: 20.0,
                                          height: 20.0,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: Icon(
                                            Icons.minimize,
                                            size: 15.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Container(
                                          child: Text(
                                            '1',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          width: 20.0,
                                          height: 20.0,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            size: 15.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Card(
                color: Colors.lightBlueAccent,
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'images/burger.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Burger',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Rp. 15000',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 15.0),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  content: Stack(
                                                    overflow: Overflow.visible,
                                                    children: <Widget>[
                                                      Positioned(
                                                        right: -40.0,
                                                        top: -40.0,
                                                        child: InkResponse(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: CircleAvatar(
                                                            child: Icon(
                                                                Icons.close),
                                                            backgroundColor:
                                                                Colors.red,
                                                          ),
                                                        ),
                                                      ),
                                                      Form(
                                                        key: _formKey,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: <Widget>[
                                                            Text('Catatan'),
                                                            Divider(),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Container(
                                                                  child:
                                                                      TextFormField(
                                                                textInputAction:
                                                                    TextInputAction
                                                                        .newline,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .multiline,
                                                                maxLines: null,
                                                              )),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  vertical:
                                                                      15.0,
                                                                  horizontal:
                                                                      22.0),
                                                              child: SizedBox(
                                                                width: double
                                                                    .infinity,
                                                                child:
                                                                    RaisedButton(
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0)),
                                                                  color: Colors
                                                                      .blue,
                                                                  textColor:
                                                                      Colors
                                                                          .white,
                                                                  onPressed:
                                                                      () {
                                                                    if (_formKey
                                                                        .currentState
                                                                        .validate()) {
                                                                      _formKey
                                                                          .currentState
                                                                          .save();
                                                                    }
                                                                  },
                                                                  child: Text(
                                                                      'Simpan'),
                                                                  padding: EdgeInsets.symmetric(
                                                                      vertical:
                                                                          16.0,
                                                                      horizontal:
                                                                          32.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                        child: Container(
                                          width: 20.0,
                                          height: 20.0,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: Icon(
                                            Icons.edit,
                                            size: 15.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          width: 20.0,
                                          height: 20.0,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: Icon(
                                            Icons.minimize,
                                            size: 15.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Container(
                                          child: Text(
                                            '1',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          width: 20.0,
                                          height: 20.0,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            size: 15.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Metode Pembayaran',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'CASH',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 22.0),
            child: SizedBox(
              width: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {},
                child: Text('Tambah Voucher/Promo'),
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              child: Text('Detail Pembayaran', style: TextStyle(fontSize: 20)),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Estimasi harga', style: TextStyle(fontSize: 20)),
              Text('Rp 30.000', style: TextStyle(fontSize: 20)),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(flex: 1, child: SizedBox()),
                Expanded(
                    flex: 4,
                    child: Text(
                      'Diskon',
                      style: TextStyle(fontSize: 20),
                    )),
                Expanded(
                  flex: 2,
                  child: Text('Rp 0', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              child: Text(
                'TOTAL: Rp 10.000',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Pesanan();
                  }));
                },
                child: Text('Pesan'),
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
