import 'package:flutter/material.dart';
import 'package:project1/Utilites/Utilities.dart';

import 'drawer.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
                      'https://images.unsplash.com/photo-1559833125-8bb4fa4cb247?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80',
                    ),
                    fit: BoxFit.cover)),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      ': الهدف من التطبيق',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(206, 10, 6, 1)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.radio_button_checked,
                      color: Color.fromRGBO(206, 10, 6, 1),
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
                      width: MediaQuery.of(context).size.width - 50,
                      child: Text(
                        'هدف التطبيق الى تسهيل بحث المسافرين عن مواعيد قيام ووصول وجهات وسرعه وارقام قطارات الهيئه القوميه لسكك حديد مصر من جميع محطات الهيئه ودرجاتها مع امكانيه معرفه محطات الوقوف بين المحطه المغادره والوصول لكل قطار باستخدام التاريخ اليوم المراد السفر فيه',
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
                      width: 7,
                      height: 3,
                      color: Colors.grey,
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
                      width: MediaQuery.of(context).size.width - 50,
                      child: Text(
                        'التطبيق يعمل بدون الإتصال بالأنترنت .',
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
                      width: 7,
                      height: 3,
                      color: Colors.grey,
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
                      width: MediaQuery.of(context).size.width - 50,
                      child: Text(
                        '  يرجى تنزيل التحديثات فور نزولها على متجر التطبيقات للحصول على المميزات والخصائص الجديدة في التطبيق واي تعديلات على مواعيد القطارات أول بأول',
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
                      width: 7,
                      height: 3,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      ' :  عن التطبيق',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(206, 10, 6, 1)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.remove_circle,
                      color: Color.fromRGBO(206, 10, 6, 1),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      child: Text(
                        'يتضمن التطبيق اكثر من 14000 رحله واكثر من 900 قطار يتم تغييرهم من 708 محطه رئيسيه وفرعيه و متوسطه وصغيره في 60 خط تتوزع ما بين نوم سريعه وقطارات اولى وثانيه مكيفه فاخره و ( VIP  )و قطارات مميزه ومطوره و قطارات ركاب ضواحي على مدار 24 ساعه في اليوم متضمنه ايام الاجازات الرسميه لكل قطار ومحطات وقوفه وتوقيتها كذلك درجه  القطار وسرعته',
                        style: TextStyle(fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.rtl,
                        maxLines: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '  :  عن سكك حديد مصر',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(206, 10, 6, 1)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.call_to_action,
                    color: Color.fromRGBO(206, 10, 6, 1),
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
                    width: MediaQuery.of(context).size.width - 50,
                    child: Text(
                      'الهيئه القوميه لسكك حديد مصر تعرف اختصارا باسم( س ح م) هي شركه قطاع عام تمتلكها الحكومه المصريه بالكامل وتشغل خطوط السكك الحديديه المصريه والتي هي الثانيه في العالم حيث تاسست بعد تاسيس السكك الحديد البريطانيه تعد  سكك حديد مصر هي اول خطوط سكك حديد يتم انشائها في افريقيا والشرق الاوسط والثانية على مستوى العالم بعد المملكه المتحده حيث بدا انشائها في 1834',
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
                    width: 7,
                    height: 3,
                    color: Colors.grey,
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
                    width: MediaQuery.of(context).size.width - 50,
                    child: Text(
                      'نقل الركاب : 500 مليون دولار سنويا( حوالي   1.4  مليون راكب يوميا)',
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
                    width: 7,
                    height: 3,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ]),
          Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      ' :  عن المطور',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(206, 10, 6, 1)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.swap_horiz,
                      color: Color.fromRGBO(206, 10, 6, 1),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Text(
                            ': م/ دانيال نجيب شاب مصري حاصل على بكالوريوس هندسه اتصالات و مبرمج مهووس في العلوم والتقنيه بشته مجالاتهم مجالاتهم كذلك البرمجه والقراءه عاشق المعرفه لزياره موقع المطور',
                            style: TextStyle(fontSize: 15),
                            overflow: TextOverflow.ellipsis,
                            textDirection: TextDirection.rtl,
                            maxLines: 5,
                          ),
                        ),
                      ])),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1551616653-e301df0d9af0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Utilities.launchURL('http://www.daniel-hbk.com');
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://image.flaticon.com/icons/png/512/44/44386.png'),
                                  fit: BoxFit.cover)),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ]));
  }
}
