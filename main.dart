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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
          child: Column(
            children: [
              // МИФИ
              ElevatedButton(
                child: Row(
                  children: [
                    Icon(Icons.book),
                    SizedBox(width: 8),
                    Text(
                      'Официальный сайт МИФИ',
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
                        description:
                        '''
    На оффициальном сайте НИЯУ МИФИ вы можете ознакомиться с
    1. Информацией для абитуриентов: подробные условия поступления.
    2. Образовательными программами: список и описание учебных курсов.
    3. Научными исследованиями: детали текущих научных проектов.
    4. Студенческой жизнью: описание внеучебных мероприятий.
    5. Международным сотрудничеством: программы и возможности для иностранных студентов.
    6. Виртуальным туром по университету: интерактивное исследование кампуса.
    7. Библиотекой и ресурсами: доступ к научным и учебным материалам.
    8. Карьерным центром: помощь в трудоустройстве и стажировках.
    9. Инновационными лабораториями: информация о передовых научных разработках.
    10. Службой поддержки: контактная информация для студентов и абитуриентов.
    11. Новостями университета: актуальные события и достижения.
    12. Электронным обучением: платформы и инструменты для дистанционного образования.
    13. Преподавательским составом: профили и достижения преподавателей.
    14. Научными публикацииями: доступ к статьям и исследованиям.
    15. Форумами и сообществами: платформы для общения студентов и преподавателей.
    16. Расписанием занятий: актуальное расписание для всех курсов.
    17. Алумни: ресурсы для выпускников.
    18. Финансовой поддержкой: информация о стипендиях и других видах поддержки.
    19. Культурными мероприятиями: афиша предстоящих культурных событий.
    20. Безопасностью и правилами поведения на территории: правила и нормы безопасности в университете.
                                ''',
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
                        ButtonText1: 'Приёмная комиссия',
                        TextBelowButton1: 'Подробно ознакомиться с правилами подачи документов в приёмную комисиию вы можете ознакомиться здесь:',
                        Url2: 'https://mephi.ru/about/cae',
                        ButtonText2: 'Факультеты',
                        TextBelowButton2: '''
  1. Институт лазерных и плазменных технологий (ЛаПлаз)
      Исследует лазеры, плазму, твердое тело.
      Разрабатывает аддитивные технологии, термоядерную энергию, квантовые технологии.
  2. Институт интеллектуальных кибернетических систем (ИИКС)
      Фокусируется на кибербезопасности, информационных системах, робототехнике.
  3. Институт нанотехнологий в электронике, спинтронике и фотонике (ИНТЭЛ)
      Создает инновационные наноматериалы, наноструктуры, занимается спинтроникой и фотоникой.
  4. Факультет бизнес-информатики и управления комплексными системами (ФБИУКС)
      Обучает в области бизнес-информатики, управления системами, ИТ и экономической безопасности.
  5. Институт ядерной физики и технологий (ИЯФИТ)
      Специализируется на ядерной физике, ядерных технологиях, радиационной безопасности.
  6. Институт международных отношений (ИМО)
      Обучает специалистов в области международной политики, экономики, безопасности.
  7. Институт финансовых технологий и экономической безопасности (ИФТЭБ)
      Фокусируется на финансовых технологиях, экономической безопасности, управлении рисками.
  8. Институт физико-технических интеллектуальных систем (ИФТИС)
      Исследует физические и информационные технологии, применяет физические принципы в ИТ.
  9. Инженерно-физический институт биомедицины (ИФИБ)
      Сочетает инженерные и физические науки с биомедициной, развивая медицинские технологии.''',
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
                        description: '''
Эта кнопка проводит вас к новостному каналу Института интеллектуальных кибернетических систем (ИИКС) при НИЯУ МИФИ. Здесь, в тихом шуме учебных треволнений и студенческих волнений, открываются вести о жизни факультета. В каждом слове этих новостей — дыхание науки, стремление к знаниям, вдохновение и будни. Канал этот станет светочем для студентов и наставников ИИКС, даруя им важные сведения и анонсы. Подписавшись, вы проникнетесь духом ИИКС, познавая его многогранную жизнь в её глубине и простоте.                            ''',
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
                        description: '''
Эта кнопка отправит вас, благородный читатель, на страницы новостного канала Института нанотехнологий в электронике, спинтронике и фотонике (ИНТЭЛ) при НИЯУ МИФИ. Там, средь волн учебных и сессий бурных, раскроются вам вести о жизни студенческой, насыщенной событиями и открытиями. Этот канал станет кладезем знаний и новостей, столь полезных студентам и преподавателям ИНТЭЛ. Присоединившись к нему, вы погрузитесь в мир научных свершений и юношеского энтузиазма, познавая жизнь студентов ИНТЭЛ во всем ее многообразии.                            ''',
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

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MephiInfoPage(
                          ResourceName: 'ССК "Реактор"',
                          Url1: 'https://vk.com/reactorclub',
                          ButtonText1: 'ВКонтакте',
                          TextBelowButton1: '''
Спортивный студенческий клуб (ССК) "Реактор" НИЯУ МИФИ — это активное сообщество, направленное на популяризацию спорта и физической культуры среди студентов. Клуб организует разнообразные спортивные мероприятия, такие как турниры, соревнования и спортивные фестивали. "Реактор" поддерживает различные спортивные секции, включая футбол, баскетбол, волейбол и другие. Также клуб занимается проведением тренировок и спортивных мастер-классов, способствуя развитию навыков и достижению высоких результатов. "Реактор" активно пропагандирует здоровый образ жизни, мотивируя студентов к физической активности и участию в спортивной жизни университета.
ССК "Реактор" открывает перед студентами множество возможностей для самореализации в спорте и активного участия в спортивной жизни университета.
''',
                          Url2: 'https://t.me/reactor_mephi',
                          ButtonText2: 'Telegram',
                          TextBelowButton2: ''
                      ),
                    ),
                  );
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
                        description: '''
В дополнение к ССК "Реактор", который освещает все спортивные события МИФИ, недавно запущен Telegram-канал сборной НИЯУ МИФИ по мини-футболу. Здесь вы найдете абсолютно всю информацию о матчах команды, на которых ждут каждого, также канал проводит небольшие викторины на знание правил мини-футбола.
Подписывайтесь и будьте в центре событий.''',
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

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddPage(
                        resourceName: 'Клуб любителей английского',
                        description: '''
Elevate your English game with our MEPHI English Club! Dive into engaging events, conversation clubs, and exclusive language resources. Connect with like-minded enthusiasts, join fun challenges, and stay updated on all things English. Subscribe now and be part of our vibrant community!
Ничего не поняли, но очень интересно? Тогда вам стоит подписаться на сообщество Английского клуба НИЯУ МИФИ, на занятиях которого вы сможете прокачать свой разговорный английский, а также найти новых потрясающих знакомых. Вступайте и будьте в центре событий!
                            ''',
                        url: 'https://vk.com/ec_mephi',
                      ),
                    ),
                  );
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
