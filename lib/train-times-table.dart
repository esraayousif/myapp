import 'package:flutter/material.dart';
import 'expansiontile.dart';

Widget TrainTimesTable(
    {String title1,
    String title2,
    String title3,
    String title4,
    String title5,
    String title6,
    String title7,
    BuildContext context}) {
  return Container(
    margin: EdgeInsets.only(
      right: 30,
      left: 30,
    ),
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
            width: 200,
            height: 70,
            margin: EdgeInsets.only(left: 3, top: 3),
            color: Color.fromRGBO(238, 238, 238, 1),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title1,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 70,
            margin: EdgeInsets.only(left: 3, top: 3),
            color: Color.fromRGBO(238, 238, 238, 1),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title2,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 70,
            margin: EdgeInsets.only(left: 3, top: 3),
            color: Color.fromRGBO(238, 238, 238, 1),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title3,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 70,
            margin: EdgeInsets.only(left: 3, top: 3),
            color: Color.fromRGBO(238, 238, 238, 1),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title4,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 70,
            margin: EdgeInsets.only(left: 3, top: 3),
            color: Color.fromRGBO(238, 238, 238, 1),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title5,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 70,
            margin: EdgeInsets.only(left: 3, top: 3),
            color: Color.fromRGBO(238, 238, 238, 1),
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title6,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Expansiontile(),
                ),
              );
            },
            child: Container(
              width: 200,
              height: 70,
              margin: EdgeInsets.only(left: 3, top: 2),
              color: Color.fromRGBO(238, 238, 238, 1),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      title7,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.subject,
                      size: 20,
                      color: Color.fromRGBO(234, 96, 83, 1),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ])
      ],
    ),
  );
}
