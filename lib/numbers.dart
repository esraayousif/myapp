import 'package:flutter/material.dart';
import 'package:project1/drawer.dart';
import 'package:project1/table.dart';

class NumberScreen extends StatefulWidget {
  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _TableElementRow {
  const _TableElementRow({this.key, this.children});
  final LocalKey key;
  final List<Element> children;
}

class _NumberScreenState extends State<NumberScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        backgroundColor: Theme.of(context).backgroundColor,
        drawer: customDrawer(context: context),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(200, 67, 60, 1),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              _globalKey.currentState.openDrawer();
            },
          ),
          title: Text(
            'Eygpt Trains-قطارات مصر',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontFamily: 'times regular'),
          ),
        ),
        body: ListView(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Color.fromRGBO(200, 67, 60, 1),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1532980183285-334c392e6974?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'))),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 30, left: 30),
            child: Table(
              columnWidths: {
                0: FlexColumnWidth(8),
                1: FlexColumnWidth(4),
                2: FlexColumnWidth(4),
              },
              textDirection: TextDirection.rtl,
              children: [
                TableRow(children: [
                  Container(
                    width: 70,
                    height: 70,
                    margin: EdgeInsets.only(left: 2),
                    color: Color.fromRGBO(234, 96, 83, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            ' اسم المحطة ',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Icon(
                          Icons.location_on,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Color.fromRGBO(234, 96, 83, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            'رقم التليفون ',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        Icon(
                          Icons.phone_android,
                          size: 25,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ])
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            width: 200,
            height: 60,
            color: Color.fromRGBO(238, 238, 238, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'اضغط على الرقم للاتصال',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  ':ملاحظة',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(234, 96, 83, 1),
                  ),
                ),
                Icon(Icons.notifications_active)
              ],
            ),
          ),
          smallTable(
            '  الخط الساخن لاستعلامات سكك حديد مصر ',
            ' 0225748279',
          ),
          smallTable(
            '       رقم تليفون استعلامات محطة مصر  ',
            ' 0225753555',
          ),
          smallTable(
            '         استعلامات القطارات (ارضي) ',
            '       117',
          ),
          smallTable(
            '  القاهرة  ',
            ' 0225753555',
          ),
          largeTable('محطة مصر (الاسكندرية) ', ' 033922882', ' 033922883',
              ' 033923207'),
          largeTable('طنطا', '0403332255', '0403335577', '0403333031'),
          largeTable(' بورسعيد', '0663221861', '0663223759', '0663333241'),
          smallTable(
            ' مرسى مطروح  ',
            ' 0464933036',
          ),
          meduimTable(
            '  المنصورة ',
            ' 0502312125',
            ' 0502319420',
          ),
          smallTable(
            ' المحلة الكبرى ',
            ' 0402222220',
          ),
          smallTable(
            '   اسيوط  ',
            ' 0882335623',
          ),
          meduimTable(
            ' الاقصر ',
            ' 0952374804',
            ' 0952385216',
          ),
          meduimTable(
            '  اسوان ',
            ' 0972314754',
            ' 0972308857',
          )
        ]));
  }
}
