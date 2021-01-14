import 'package:flutter/material.dart';

class Expansiontile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(200, 67, 60, 1),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // _globalKey.currentState.openDrawer();
          },
        ),
        title: Text(
          'Eygpt Trains-قطارات مصر',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontFamily: 'times regular'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(children: [
          ExpansionTile(children: [
            Container(
              margin: EdgeInsets.only(
                right: 30,
                left: 30,
              ),
              child: Table(
                columnWidths: {
                  0: FlexColumnWidth(10),
                  1: FlexColumnWidth(4),
                  2: FlexColumnWidth(2),
                },
                textDirection: TextDirection.rtl,
                children: [
                  TableRow(children: [
                    Container(
                      width: 200,
                      height: 200,
                      margin: EdgeInsets.only(
                        left: 3,
                      ),
                      color: Color.fromRGBO(238, 238, 238, 1),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 200,
                              height: 70,
                              child: Image(
                                image: NetworkImage(
                                    'https://t4.ftcdn.net/jpg/02/76/55/49/240_F_276554988_zcz1pm66Muek3vvqbEl36ZLUV7RbBdh0.jpg'),
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      margin: EdgeInsets.only(
                        left: 3,
                      ),
                      color: Color.fromRGBO(238, 238, 238, 1),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'طلخا',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'سمنود',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'المحله الكبرى',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'محله روح',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'طنطا',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'بركة السبع',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'قويسنا',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'بنها',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'طوخ',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      margin: EdgeInsets.only(
                        left: 3,
                      ),
                      color: Color.fromRGBO(238, 238, 238, 1),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '03:55 ص',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '04:11 ص',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '04:22 ص',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '04:37 ص',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '05:00 ص',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '05:16 ص',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '05:28 ص',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '05:42 ص',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '05:53 ص',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
