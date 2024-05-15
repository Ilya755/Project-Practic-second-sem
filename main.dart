import 'package:flutter/material.dart';
import 'teacher_page.dart';
import 'add_page.dart';
import 'mephi_info.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  bool click_button_1_state = false;
  bool click_button_2_state = false;
  bool click_button_3_state = false;
  bool click_button_4_state = false;
  bool click_button_5_state = false;
  bool click_button_6_state = false;
  bool click_button_7_state = false;
  bool click_button_8_state = false;
  bool click_button_9_state = false;
  bool click_button_10_state = false;

  StartTimer(int index) {
    Timer(Duration(seconds: 5), () {
      switch (index) {
        case 1:
          click_button_1_state = false;
          break;
        case 2:
          click_button_2_state = false;
          break;
        case 3:
          click_button_3_state = false;
          break;
        case 4:
          click_button_4_state = false;
          break;
        case 5:
          click_button_5_state = false;
          break;
        case 6:
          click_button_6_state = false;
          break;
        case 7:
          click_button_7_state = false;
          break;
        case 8:
          click_button_8_state = false;
          break;
        case 9:
          click_button_9_state = false;
          break;
        case 10:
          click_button_10_state = false;
          break;
        default:
          break;
      }
    });
  }

  _launchUrl(String Url) async {
    if (await canLaunch(Url)) {
      await launch(Url);
    } else {
      throw 'Не удается открыть сайт';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'MEPHIST 2.0',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 15.0),
              shrinkWrap: true,
              children: [
                // МИФИ
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.book),
                      SizedBox(width: 8),
                      Text(
                        'Оффициальный сайт МИФИ',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    click_button_1_state = true;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddPage(
                          resourceName: 'Оффициальный сайт МИФИ',
                          description: 'abracadabra',
                          url: 'https://mephi.ru',
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (click_button_1_state) {
                          return Colors.greenAccent;
                        } else {
                          return Colors.cyanAccent[400]!;
                        }
                      },
                    ),
                  ),
                ),
                Divider(),

                // О МИФИ
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.book),
                      SizedBox(width: 8),
                      Text(
                        'Полезно знать про МИФИ',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    click_button_2_state = true;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MephiInfoPage(
                          ResourceName: 'Полезно знать про МИФИ',
                          Url1: 'https://mephi.ru', // ToDo добавить действительный URL
                          ButtonText1: 'институты',
                          TextBelowButton1: 'текст с сайта 1',
                          Url2: 'https://mephi.ru', // ToDo добавить действительный URL
                          ButtonText2: 'факультеты',
                          TextBelowButton2: 'текст с сайта 2',
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (click_button_2_state) {
                          return Colors.greenAccent;
                        } else {
                          return Colors.cyanAccent[400]!;
                        }
                      },
                    ),
                  ),
                ),
                Divider(),

                // ИИКС
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.newspaper),
                      SizedBox(width: 8),
                      Text(
                        'Новости ИИКС',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    click_button_3_state = true;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddPage(
                          resourceName: 'Телеграм канал ИИКС',
                          description: 'abracadabra2',
                          url: 'https://t.me/icisnews',
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (click_button_3_state) {
                          return Colors.greenAccent;
                        } else {
                          return Colors.cyanAccent[400]!;
                        }
                      },
                    ),
                  ),
                ),
                Divider(),

                // ИНТЭЛ
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.newspaper),
                      SizedBox(width: 8),
                      Text(
                        'Новости ИНТЭЛ',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    click_button_4_state = true;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddPage(
                          resourceName: 'Телеграм канал ИНТЭЛ',
                          description: 'abracadabra3',
                          url: 'https://t.me/NESPINEWS23',
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (click_button_4_state) {
                          return Colors.greenAccent;
                        } else {
                          return Colors.cyanAccent[400]!;
                        }
                      },
                    ),
                  ),
                ),
                Divider(),

                // Преподы
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 8),
                      Text(
                        'Преподаватели',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    click_button_5_state = true;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TeacherPage(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (click_button_5_state) {
                          return Colors.greenAccent;
                        } else {
                          return Colors.yellow[600]!;
                        }
                      },
                    ),
                  ),
                ),
                Divider(),

                // Реактор, который про спорт в унике
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 8),
                      Text(
                        'Реактор',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    click_button_6_state = true;
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (click_button_6_state) {
                          return Colors.greenAccent;
                        } else {
                          return Colors.yellow[600]!;
                        }
                      },
                    ),
                  ),
                ),
                Divider(),

                // МФК МИФИ
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 8),
                      Text(
                        'Минифутбольный клуб МИФИ',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    click_button_7_state = true;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddPage(
                          resourceName: 'МФК МИФИ',
                          description: 'abracadabra5',
                          url: 'https://t.me/mfcmephi',
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (click_button_7_state) {
                          return Colors.greenAccent;
                        } else {
                          return Colors.yellow[600]!;
                        }
                      },
                    ),
                  ),
                ),
                Divider(),

                // Клуб любителей английского
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 8),
                      Text(
                        'Клуб любителей английского',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    click_button_8_state = true;
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (click_button_8_state) {
                          return Colors.greenAccent;
                        } else {
                          return Colors.yellow[600]!;
                        }
                      },
                    ),
                  ),
                ),
                Divider(),

                // Отзыв по преподу
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.feedback),
                      SizedBox(width: 8),
                      Text(
                        'Написать отзыв о преподавателе\n(гугл форма)',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    click_button_9_state = true;
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (click_button_9_state) {
                          return Colors.greenAccent;
                        } else {
                          return Colors.white;
                        }
                      },
                    ),
                  ),
                ),
                Divider(),

                // Критика и предложения
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.thumb_down),
                      SizedBox(width: 8),
                      Text(
                        'Критика и предложения(гугл форма)',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    click_button_10_state = true;
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (click_button_10_state) {
                          return Colors.greenAccent;
                        } else {
                          return Colors.white;
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Image.asset(
              'assets/mephi_logo.png',
              width: 60,
              height: 60,
            ),
          ),
        ],
      ),
    );
  }
}

class TeacherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Преподаватели"),
      ),
      body: Center(
        child: Text("Раздел с информацией о преподавателях"),
      ),
    );
  }
}