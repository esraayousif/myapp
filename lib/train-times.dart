import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/train-times-table.dart';

import 'drawer.dart';

class TrainTimes extends StatefulWidget {
  @override
  _TrainTimesState createState() => _TrainTimesState();
}

class _TrainTimesState extends State<TrainTimes> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  Widget Stations_icon(String text) {
    return Container(
        child: Row(
      children: [
        Icon(
          Icons.subject,
          size: 20,
          color: Color.fromRGBO(234, 96, 83, 1),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);

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
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 10, left: 80, right: 80),
            child: Container(
              width: 20,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(234, 96, 83, 1),
              ),
              child: Center(
                child: Text(
                  'من المنصورة الى القاهرة يوجد 16 قطار',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Table(
              columnWidths: {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(2),
                3: FlexColumnWidth(2),
                4: FlexColumnWidth(2),
                5: FlexColumnWidth(4),
                6: FlexColumnWidth(2),
              },
              textDirection: TextDirection.rtl,
              children: [
                TableRow(children: [
                  Container(
                    height: 90,
                    margin: EdgeInsets.only(left: 2),
                    color: Color.fromRGBO(234, 96, 83, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'قطار',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Icon(
                          Icons.train,
                          size: 20,
                          color: Colors.white,
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: 90,
                    margin: EdgeInsets.only(left: 2),
                    color: Color.fromRGBO(234, 96, 83, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'قيام',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Icon(
                          Icons.access_time,
                          size: 20,
                          color: Colors.white,
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: 90,
                    margin: EdgeInsets.only(left: 2),
                    color: Color.fromRGBO(234, 96, 83, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'وصول',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.av_timer,
                          size: 20,
                          color: Colors.white,
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: 90,
                    margin: EdgeInsets.only(left: 2),
                    color: Color.fromRGBO(234, 96, 83, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'المدة',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Icon(
                          Icons.filter_list,
                          size: 20,
                          color: Colors.white,
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: 90,
                    margin: EdgeInsets.only(left: 2),
                    color: Color.fromRGBO(234, 96, 83, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'السرعة',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Icon(
                          Icons.network_check,
                          size: 20,
                          color: Colors.white,
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: 90,
                    margin: EdgeInsets.only(left: 2),
                    color: Color.fromRGBO(234, 96, 83, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'الدرجة',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Icon(
                          Icons.local_offer,
                          size: 20,
                          color: Colors.white,
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: 90,
                    margin: EdgeInsets.only(left: 2),
                    color: Color.fromRGBO(234, 96, 83, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'يقف في',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Icon(
                          Icons.list,
                          size: 20,
                          color: Colors.white,
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                ]),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 32,
              right: 30,
            ),
            width: 200,
            height: 60,
            color: Color.fromRGBO(238, 238, 238, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stations_icon(
                    ' يمكنك معرفة محطات الوقوف التي ستمر عليها في القطار عن طريق اللمس على'),
                Text(
                  '     :ملاحظة  ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(234, 96, 83, 1),
                  ),
                ),
                Icon(
                  Icons.error,
                  color: Color.fromRGBO(234, 96, 83, 1),
                )
              ],
            ),
          ),
          TrainTimesTable(
              title1: '808',
              title2: '03:50 ص',
              title3: '06:30 ص',
              title4: '02:40',
              title5: '105 كم/س',
              title6: 'مميز',
              title7: '11',
              context: context),
          TrainTimesTable(
              title1: '378',
              title2: '05:00 ص',
              title3: '09:20 ص',
              title4: '04:20',
              title5: '90 كم/س',
              title6: 'مطور (ركاب)',
              title7: '44',
              context: context),
          TrainTimesTable(
              title1: '948',
              title2: '05:45 ص',
              title3: '08:20 ص',
              title4: '02:35',
              title5: '105 كم/س',
              title6: 'مكيف + به عربات مميزة',
              title7: '9',
              context: context),
          TrainTimesTable(
              title1: '1914',
              title2: '06:30 ص',
              title3: '08:45 ص',
              title4: '02:15',
              title5: '105 كم/س',
              title6: 'مكيف + به عربات مميزة',
              title7: '4',
              context: context),
          Container(
            margin: EdgeInsets.only(
              left: 32,
              right: 30,
              top: 3,
            ),
            width: 200,
            height: 70,
            color: Color.fromRGBO(238, 238, 238, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'يوقف تشغيل هذا القطار ⬆ ايام الجمع والعطلات شتاء',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  ' :تنبيه',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(234, 96, 83, 1),
                  ),
                ),
                Icon(
                  Icons.error,
                  color: Color.fromRGBO(234, 96, 83, 1),
                )
              ],
            ),
          ),
          TrainTimesTable(
              title1: '334',
              title2: '07:10 ص',
              title3: '10:40 ص',
              title4: '03:30',
              title5: '90 كم/س',
              title6: 'مطور (ركاب)',
              title7: '19',
              context: context),
          TrainTimesTable(
              title1: '964',
              title2: '07:45 ص',
              title3: '10:10 ص',
              title4: '02:25',
              title5: '105 كم/س',
              title6: 'مميز',
              title7: '7',
              context: context),
          TrainTimesTable(
              title1: '380',
              title2: '09:00 ص',
              title3: '01:30 م',
              title4: '04:30',
              title5: '90 كم/س',
              title6: 'مطور (ركاب)',
              title7: '44',
              context: context),
          TrainTimesTable(
              title1: '384',
              title2: '12:25 م',
              title3: '05:25 م',
              title4: '05:00',
              title5: '90 كم/س',
              title6: 'مطور (ركاب)',
              title7: '44',
              context: context),
          TrainTimesTable(
              title1: '386',
              title2: '02:00 م',
              title3: '06:35 م',
              title4: '04:35',
              title5: '90 كم/س',
              title6: 'مطور (ركاب)',
              title7: '44',
              context: context),
          TrainTimesTable(
              title1: '966',
              title2: '03:00 م',
              title3: '05:55 م',
              title4: '02:55',
              title5: '105 كم/س',
              title6: 'مكيف + به عربات مميزة',
              title7: '8',
              context: context),
          TrainTimesTable(
              title1: '388',
              title2: '03:20 م',
              title3: '07:50 م',
              title4: '04:30',
              title5: '90 كم/س',
              title6: 'مطور (ركاب)',
              title7: '44',
              context: context),
        ]));
  }
}
