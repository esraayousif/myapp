import 'package:flutter/material.dart';
import 'package:project1/Utilites/Utilities.dart';

import 'drawer.dart';

class TicketScreen extends StatefulWidget {
  @override
  _TicketScreenState createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        backgroundColor: Theme.of(context).backgroundColor,
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
        drawer: customDrawer(context: context),
        body: ListView(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Color.fromRGBO(200, 67, 60, 1),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1582079133805-43655f026448?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '  حجز مقاعد عن طريق الانترنت',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(206, 10, 6, 1)),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: Image(
                        image: NetworkImage(
                            'https://t4.ftcdn.net/jpg/01/10/42/49/240_F_110424988_1daItp4q2t4BDi7RBMrMjGrAMctcctFT.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width - 31,
                        child: Text(
                          'عملية حجز التذاكر عن طريق الإنترنت تقتصر بشكل حصري على موقع سكك حديد مصر ويشترط أن يكون لديك فيزا كارت او ماستر كارت وطابعه لطباعه التذكرة',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                          maxLines: 5,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 5,
                        height: 1,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width - 31,
                        child: Text(
                          'لقراءة الشرح مصور لكيفية التسجيل في الموقع وشراء وحجز التذاكر من خلال موقع سكك حديد مصر الرسمي برجاء تحميل كتاب ال PDF هذا ',
                          style: TextStyle(fontSize: 15),
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                          maxLines: 5,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 5,
                        height: 1,
                        color: Colors.red,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 31,
                      child: InkWell(
                        onTap: () {
                          Utilities.launchURL(
                              'https://www.academia.edu/2628218/السكة_الحديد_في_مصر_المعضلات_و_مقترحات_التطوير');
                        },
                        child: Text(
                          ' https://webscreen.pdf',
                          style: TextStyle(fontSize: 15, color: Colors.red),
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                          maxLines: 5,
                        ),
                      ),
                    ),
                  ]))
        ]));
  }
}
