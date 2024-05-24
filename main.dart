import 'package:flutter/material.dart';
import 'teacher_page.dart';
import 'review_form_page.dart';
import 'add_page.dart';
import 'mephi_info.dart';
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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> clickButtonStates = List.generate(10, (_) => false);
  List<Color?> buttonColors = [
    Colors.cyanAccent[400],
    Colors.cyanAccent[400],
    Colors.cyanAccent[400],
    Colors.cyanAccent[400],
    Colors.yellow[600],
    Colors.yellow[600],
    Colors.yellow[600],
    Colors.yellow[600],
    Colors.white,
    Colors.white
  ];

  void startTimer(int index) {
    Timer(Duration(seconds: 10), () {
      setState(() {
        clickButtonStates[index] = false;
      });
    });
  }

  void handleButtonPress(int index) {
    setState(() {
      clickButtonStates[index] = true;
    });
    startTimer(index);
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
        children: [
          SingleChildScrollView(
        // fit: StackFit.expand,
            child: Padding(
              // [
              // Center(
              //   child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
                  // shrinkWrap: true,
                  child: Column(
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
                        handleButtonPress(0);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddPage(
                              resourceName: 'Сайт МИФИ',
                              description: 'Уважаемые посетители! \n'
                              'Приветствуем вас в приложении МИФИСТ 2.0.! \n'
                              'Пока что это лишь пробная версия приложения, но мы будем развиваться, '
                                  'для того, чтобы предоставить вам весь нужный функционал :) \n\n'
                              'Здесь вы найдете:\n'

                              '\tИнформацию о вузе, образовательных программах, студенческой жизни.\n'
                              '\tУдобный поиск, меню разделов и карту сайта.\n'
                              '\tПравила приема, подачу заявки, стипендии, общежития, внеучебную деятельность.\n'
                              '\tНаучные направления, публикации, конференции.\n'
                              '\tКонтакты для связи, вопросы, предложения, отзывы.\n\n'
                              'Надеемся, наш сайт станет вашим помощником!',
                              url: 'https://mephi.ru',
                            ),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (clickButtonStates[0]) {
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
                            'Абитуриентам',
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
                        handleButtonPress(1);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MephiInfoPage(
                              ResourceName: 'Полезно знать про МИФИ',
                              Url1: 'https://admission2022.mephi.ru/admission/baccalaureate-and-specialty',
                              ButtonText1: 'Приемная комиссия',
                              TextBelowButton1: 'Здесь вы можете подробно ознакомиться с процессом подачи документов в приемную комиссию',
                              Url2: 'https://mephi.ru/about/cae',
                              ButtonText2: 'Факультеты',
                              TextBelowButton2: 'Здесь вы можете подробнее ознакомиться со всеми факультетами',
                            ),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (clickButtonStates[1]) {
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
                        handleButtonPress(2);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddPage(
                              resourceName: 'Телеграм канал ИИКС',
                              description: 'Здесь вы можете ознакомиться с институтом ИИКС '
                              'перейдя в их tg канал',
                              url: 'https://t.me/icisnews',
                            ),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (clickButtonStates[2]) {
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
                        handleButtonPress(3);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddPage(
                              resourceName: 'Телеграм канал ИНТЭЛ',
                              description: 'Здесь вы можете ознакомиться с институтом ИНТЭЛ '
                              'перейдя в их tg канал',
                              url: 'https://t.me/NESPINEWS23',
                            ),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (clickButtonStates[3]) {
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
                        handleButtonPress(4);

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
                            if (clickButtonStates[4]) {
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
                        handleButtonPress(5);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (clickButtonStates[5]) {
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
                        handleButtonPress(6);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddPage(
                              resourceName: 'МФК МИФИ',
                              description: 'Помимо Реактора, который освещает '
                                  'все спортивные мероприятие, происходящие в университете, '
                                  'в МИФИ совсем недавно появился ТГ канал сборной команды '
                                  'по мини футболу, в котором вы можете найти актуальную '
                                  'информацию об играх команды(на которые вы можете придти и '
                                  'поддержать ребят из родного ВУЗа). Также в канале освещаются '
                                  'жизнь и тренировки сборной, проводится различный интерактив.'
                                  '\n\nПодписывайтесь, чтобы быть в курсе всех событий, '
                                  'парни будут рады каждому новому подписчику!',
                              url: 'https://t.me/mfcmephi',
                            ),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (clickButtonStates[6]) {
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
                        handleButtonPress(7);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (clickButtonStates[7]) {
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
                        handleButtonPress(8);
                        redirectToGoogleFormTeachers();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (clickButtonStates[8]) {
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
                            'Критика и предложения\n(гугл форма)',
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
                        handleButtonPress(9);
                        redirectToGoogleFormFeedback();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (clickButtonStates[9]) {
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
            ),
          // Positioned(
          //   bottom: 10,
          //   right: 10,
          //   child: Image.asset(
          //     'assets/mephi_logo.png',
          //     width: 60,
          //     height: 60,
          //   ),
          // ),
        ],
      ),
      floatingActionButton: Positioned(
        bottom: 10,
        right: 10,
        child: Image.asset(
          'assets/mephi_logo.png',
          width: 60,
          height: 60,
        ),
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