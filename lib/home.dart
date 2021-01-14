import 'package:flutter/material.dart';
import 'package:project1/drawer.dart';
import 'package:project1/train-times.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget textFeild(String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: hint,
                hintStyle: TextStyle(
                    fontFamily: 'times regular',
                    fontSize: 25,
                    color: Colors.black38),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )),
          ),
        ),
      ),
    );
  }

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  Widget titleCard({String title, Widget icon, Function onTap, int index}) {}

  int radioValue = 0;

  Widget dialogCard({
    String title,
    int radioIndex,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Radio(
              activeColor: Colors.teal,
              value: radioIndex,
              groupValue: radioValue,
              onChanged: (val) {
                setState(() {
                  radioValue = val;
                });
              }),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ],
      ),
    );
  }

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
      body: Column(
        children: <Widget>[
          textFeild('محطة المغادرة...'),
          textFeild('محطة الوصول...'),
          Container(
            width: 300,
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black54),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Directionality(
                              textDirection: TextDirection.rtl,
                              child: Dialog(
                                backgroundColor: Colors.white,
                                child: Container(
                                    width: 300,
                                    height: 420,
                                    color: Color.fromRGBO(66, 66, 66, 1),
                                    child: Column(
                                      children: <Widget>[
                                        dialogCard(
                                            title: 'عرض جميع الدرجات ',
                                            radioIndex: 0),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 2,
                                          color: Colors.grey.withOpacity(0.2),
                                        ),
                                        dialogCard(
                                          title: '  VIP',
                                          radioIndex: 1,
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 2,
                                          color: Colors.grey.withOpacity(0.2),
                                        ),
                                        dialogCard(
                                          title: '  مكيف',
                                          radioIndex: 2,
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 2,
                                          color: Colors.grey.withOpacity(0.2),
                                        ),
                                        dialogCard(
                                          title: '  نوم',
                                          radioIndex: 3,
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 2,
                                          color: Colors.grey.withOpacity(0.2),
                                        ),
                                        dialogCard(
                                          title: '  اكسبريس بعربيات مطورة',
                                          radioIndex: 4,
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 2,
                                          color: Colors.grey.withOpacity(0.2),
                                        ),
                                        dialogCard(
                                          title: '  اكسبريس بعربيات مميزة',
                                          radioIndex: 5,
                                        ),
                                      ],
                                    )),
                              ),
                            );
                          });
                    }),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'عرض جميع الدرجات...',
                    style: TextStyle(fontSize: 20, color: Colors.black26),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TrainTimes()));
            },
            child: Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(200, 67, 60, 1)),
              child: Center(
                child: Text(
                  'عرض القطارات',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
