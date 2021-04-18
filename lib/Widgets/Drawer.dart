import 'package:flutter/material.dart';

// Zahid Ali Regestration Number 2018-CS-136
var menus = [
  {
    'name': 'Todays',
    'icon': Icons.email_rounded,
    'route': '/todays',
    'active': false,
  },
  {
    'name': 'Products',
    'icon': Icons.photo_rounded,
    'route': '/todays',
    'active': false,
  },
  {
    'name': 'Direct Materrials',
    'icon': Icons.people,
    'route': '/todays',
    'active': false,
  },
  {
    'name': 'Direct Labour',
    'icon': Icons.local_offer_sharp,
    'route': '/todays',
    'active': false,
  },
  {
    'name': 'Overheads',
    'icon': Icons.local_offer_sharp,
    'route': '/todays',
    'active': false,
  },
  {
    'name': 'Customers',
    'icon': Icons.people,
    'route': '/todays',
    'active': false,
  },
  {
    'name': 'Suppliers',
    'icon': Icons.people,
    'route': '/todays',
    'active': false,
  },
];
var menus2 = [
  {
    'name': 'Consultant',
    'icon': Icons.people,
    'route': '/todays',
    'active': false,
  },
  {
    'name': 'Help',
    'icon': Icons.help,
    'route': '/todays',
    'active': false,
  },
  {
    'name': 'Settings',
    'icon': Icons.settings,
    'route': '/todays',
    'active': false,
  },
  {
    'name': 'logout',
    'icon': Icons.logout,
    'route': '/',
    'active': false,
  }
];

class DrawerWidget extends StatefulWidget {
  final List<dynamic> menuList = menus;
  final List<dynamic> menuList2 = menus2;

  _DrawerWidget createState() => _DrawerWidget();
}

class _DrawerWidget extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 4),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('lib/assets/person.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 11),
                  child: Text(
                    'Hamza Farooq',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    'hamza@gmail.com',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                itemCount: widget.menuList.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, widget.menuList[index]['route']);
                    },
                    child: Container(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        child: Row(
                          children: [
                            Icon(
                              widget.menuList[index]['icon'],
                              size: 24,
                              color: Colors.grey,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                widget.menuList[index]['name'],
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Divider(
            height: 10,
            thickness: 2,
            // indent: 20,
            // endIndent: 20,
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                itemCount: widget.menuList2.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, widget.menuList2[index]['route']);
                    },
                    child: Container(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        child: Row(
                          children: [
                            Icon(
                              widget.menuList2[index]['icon'],
                              size: 24,
                              color: Colors.grey,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                widget.menuList2[index]['name'],
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
