import 'package:flutter/material.dart';
import 'package:project1/Utilites/Utilities.dart';
import 'package:url_launcher/url_launcher.dart';

Widget smallTable(
  String title1,
  String title2,
) {
  return Container(
      margin: EdgeInsets.only(right: 30, left: 30, bottom: 5),
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
                width: 200,
                height: 70,
                margin: EdgeInsets.only(left: 2),
                color: Color.fromRGBO(238, 238, 238, 1),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title1,
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Utilities.callPhone("$title2");
                },
                child: Container(
                  width: 100,
                  height: 70,
                  color: Color.fromRGBO(238, 238, 238, 1),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          title2,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(234, 96, 83, 1)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ])
          ]));
}

Widget largeTable(String text1, String text2, String text3, String text4) {
  return Container(
    margin: EdgeInsets.only(right: 30, left: 30, bottom: 5),
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
            width: 200,
            height: 90,
            margin: EdgeInsets.only(left: 2),
            color: Color.fromRGBO(238, 238, 238, 1),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    text1,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Utilities.callPhone("$text2");
            },
            child: Container(
              width: 100,
              height: 90,
              color: Color.fromRGBO(238, 238, 238, 1),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          text2,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(234, 96, 83, 1)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          text3,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(234, 96, 83, 1)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          text4,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(234, 96, 83, 1)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ])
      ],
    ),
  );
}

Widget meduimTable(String title, String title1, String title2) {
  return Container(
    margin: EdgeInsets.only(right: 30, left: 30, bottom: 5),
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
            width: 200,
            height: 75,
            margin: EdgeInsets.only(left: 2),
            color: Color.fromRGBO(238, 238, 238, 1),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Utilities.callPhone("$title2");
            },
            child: Container(
              width: 100,
              height: 75,
              color: Color.fromRGBO(238, 238, 238, 1),
              child: Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          title1,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(234, 96, 83, 1)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          title2,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(234, 96, 83, 1)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ])
      ],
    ),
  );
}
