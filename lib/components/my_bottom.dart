import 'package:Task1/pages/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavigator extends StatefulWidget {
  @override
  _MyBottomNavigatorState createState() => _MyBottomNavigatorState();
}

class _MyBottomNavigatorState extends State<MyBottomNavigator> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? new IconButton(
                      icon: Icon(
                        Icons.home,
                        size: 30.0,
                        color: Colors.blue,
                      ),
                    )
                  : new IconButton(
                      icon: Icon(
                        Icons.home,
                        size: 30.0,
                        color: Colors.grey,
                      ),
                    ),
              title: SizedBox()),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? new IconButton(
                    icon: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.blue,
                    ),
                  )
                : new IconButton(
                    icon: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                  ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? new IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 30.0,
                      color: Colors.blue,
                    ),
                  )
                : new IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                  ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? new IconButton(
                    icon: Icon(
                      Icons.mail,
                      size: 30.0,
                      color: Colors.blue,
                    ),
                  )
                : new IconButton(
                    icon: Icon(
                      Icons.mail,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                  ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4
                ? new IconButton(
                    icon: Icon(
                      Icons.person,
                      size: 30.0,
                      color: Colors.blue,
                    ),
                  )
                : new IconButton(
                    icon: Icon(
                      Icons.person,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                  ),
            title: SizedBox(),
          ),

          // BottomNavigationBarItem(
          //   icon: IconButton(
          //       icon: Icon(
          //         Icons.home,
          //         size: 30.0,
          //       ),
          //       onPressed: () {
          //         Navigator.pop(context);
          //       }),
          //   title: Text('Home'),
          // ),
          // BottomNavigationBarItem(
          //   icon: CircleAvatar(
          //     radius: 15.0,
          //     backgroundImage: AssetImage('images/burger.jpeg'),
          //   ),
          //   title: SizedBox.shrink(),
          // )
        ],
      ),
    );
  }
}
