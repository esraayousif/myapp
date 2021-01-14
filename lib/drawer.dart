import 'package:flutter/material.dart';
import 'package:project1/Utilites/Utilities.dart';
import 'package:project1/about.dart';
import 'package:project1/home.dart';
import 'package:project1/numbers.dart';
import 'package:project1/ticket.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

Widget titleCard(
    {String title, Widget icon, Function ontap, BuildContext context}) {
  return InkWell(
    onTap: ontap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    ),
  );
}

Widget customDrawer({BuildContext context}) {
  return Drawer(
    child: ListView(
      children: [
        Container(
          height: 400,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              titleCard(
                  context: context,
                  title: 'الرئيسية ',
                  icon: Icon(
                    Icons.home,
                    color: Color.fromRGBO(206, 10, 6, 1),
                    size: 30,
                  ),
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }),
              titleCard(
                  context: context,
                  title: 'ارقام الاستعلامات ',
                  icon: Icon(
                    Icons.call,
                    color: Color.fromRGBO(206, 10, 6, 1),
                    size: 30,
                  ),
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NumberScreen()));
                  }),
              titleCard(
                  context: context,
                  title: 'حجز تذاكر ',
                  icon: Icon(
                    Icons.card_travel,
                    color: Color.fromRGBO(206, 10, 6, 1),
                    size: 30,
                  ),
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TicketScreen()));
                  }),
              titleCard(
                  context: context,
                  title: 'عرف اصحابك ',
                  icon: Icon(
                    Icons.send,
                    color: Color.fromRGBO(206, 10, 6, 1),
                    size: 30,
                  ),
                  ontap: () {
                    Share.share(
                        'check out my website https://pub.dev/packages/share');
                  }),
              titleCard(
                  context: context,
                  title: 'فيه مشكلة؟ ابعتلنا ',
                  icon: Icon(
                    Icons.markunread,
                    color: Color.fromRGBO(206, 10, 6, 1),
                    size: 30,
                  ),
                  ontap: () {
                    Utilities.sendMail("ey989063@gmail.com");
                  }),
              titleCard(
                  context: context,
                  title: 'عن التطبيق ',
                  icon: Icon(
                    Icons.golf_course,
                    color: Color.fromRGBO(206, 10, 6, 1),
                    size: 30,
                  ),
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutScreen()));
                  }),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Color.fromRGBO(230, 233, 238, 1),
          child: InkWell(
            onTap: () {
              Utilities.launchURL(
                  'https://www.facebook.com/EgyptRailways2018/');
            },
            child: Image(
              image: NetworkImage(
                  'https://img.icons8.com/fluent/2x/facebook-new.png'),
            ),
          ),
        )
      ],
    ),
  );
}
