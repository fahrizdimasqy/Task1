import 'package:Task1/data/makanan.dart';
import 'package:Task1/pages/detail_screen.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Burger",
      "picture":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Burger_King_Angus_Bacon_%26_Cheese_Steak_Burger.jpg/1200px-Burger_King_Angus_Bacon_%26_Cheese_Steak_Burger.jpg",
      "price": 15000,
      "description":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus minus, iure reiciendis nemo ipsa explicabo esse est similique laborum natus, vel, repudiandae eum expedita cupiditate tempora dicta necessitatibus quia non.",
    },
    {
      "name": "Nasi Goreng",
      "picture":
          "https://www.masakapahariini.com/wp-content/uploads/2018/04/cara-membuat-nasi-goreng-seafood-780x440.jpg",
      "price": 15000,
      "description":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus minus, iure reiciendis nemo ipsa explicabo esse est similique laborum natus, vel, repudiandae eum expedita cupiditate tempora dicta necessitatibus quia non.",
    },
    {
      "name": "Kentang Goreng",
      "picture":
          "https://www.seriouseats.com/2018/04/20180309-french-fries-vicky-wasik-15-1500x1125.jpg",
      "price": 7000,
      "description":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus minus, iure reiciendis nemo ipsa explicabo esse est similique laborum natus, vel, repudiandae eum expedita cupiditate tempora dicta necessitatibus quia non.",
    },
    {
      "name": "Fizza",
      "picture":
          "https://b.zmtcdn.com/data/reviews_photos/d00/fde1a9629cc39cd8514e2a8d09845d00_1553069607.jpg",
      "price": 59000,
      "description":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus minus, iure reiciendis nemo ipsa explicabo esse est similique laborum natus, vel, repudiandae eum expedita cupiditate tempora dicta necessitatibus quia non.",
    },
    {
      "name": "Donuts",
      "picture": "https://i.ytimg.com/vi/gevpzxRxec4/maxresdefault.jpg",
      "price": 45000,
      "description":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus minus, iure reiciendis nemo ipsa explicabo esse est similique laborum natus, vel, repudiandae eum expedita cupiditate tempora dicta necessitatibus quia non.",
    },
    {
      "name": "Fried Chicken",
      "picture":
          "https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2020/04/Fried-Chicken.jpg",
      "price": 15000,
      "description":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus minus, iure reiciendis nemo ipsa explicabo esse est similique laborum natus, vel, repudiandae eum expedita cupiditate tempora dicta necessitatibus quia non.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Makanan(
              nama_makanan: product_list[index]['name'],
              foto_makanan: product_list[index]['picture'],
              // prod_old_price: product_list[index]['old_price'],
              harga: product_list[index]['price'],
              deskripsi: product_list[index]['description']);
        });
  }
}

class Makanan extends StatelessWidget {
  final nama_makanan;
  final foto_makanan;
  // final prod_old_price;
  final harga;
  final deskripsi;

  Makanan({this.nama_makanan, this.foto_makanan, this.harga, this.deskripsi});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: nama_makanan,
          child: Material(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (contex) => new DetailScreen(
                          nama_detail_makanan: nama_makanan,
                          foto_detail_makanan: foto_makanan,
                          harga_detail: harga,
                          deskripsi_detail: deskripsi,
                        )));
              },
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            nama_makanan,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            "\ Rp $harga",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      // title: Column(
                      //   children: <Widget>[
                      //     Text(
                      //       "\ Rp $harga",
                      //       style: TextStyle(
                      //           color: Colors.blue,
                      //           fontWeight: FontWeight.w800),
                      //     ),
                      //     Text(
                      //       "\ Rp $harga",
                      //       style: TextStyle(
                      //           color: Colors.blue,
                      //           fontWeight: FontWeight.w800),
                      //     ),
                      //   ],
                      // ),
                    ),
                  ),
                  child: Image.network(
                    foto_makanan,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
