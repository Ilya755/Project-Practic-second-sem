import 'package:flutter/material.dart';

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
                  'MEPHIST 2.0',
                   style: TextStyle(
                     color: Colors.black
                    ),
                  ),
      ),
      body: Stack(
          children: [
            ListView(
            // padding: EdgeInsets.all(50),
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
                    ]
                ),
                onPressed: (){
                  click_button_1_state = true;
                  // ToDo гиперссылка на офф сайт
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (click_button_1_state) {
                        return Colors.greenAccent;
                      }
                      else {
                        return Colors.amber;
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
                    ]
                ),
                onPressed: (){
                  click_button_2_state = true;
                  // ToDo тоже список, в который пишем сслыки на разные ресурсы МИФИ,
                  //  приводим список кафедр, факультетов и т.д.
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (click_button_2_state) {
                        return Colors.greenAccent;
                      }
                      else {
                        return Colors.amber;
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
                      'Новостной канал ИИКС от студента',
                        style: TextStyle(
                            fontFamily: 'Times New Roman',
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
                ),
                onPressed: (){
                  click_button_3_state = true;
                // ToDo перекидывание в канал при нажатии /
                  // показ постов, которые мы выгрузили
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (click_button_3_state) {
                        return Colors.greenAccent;
                      }
                      else {
                        return Colors.blue;
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
                        'Новостной канал ИНТЭЛ от студента',
                        style: TextStyle(
                            fontFamily:  'Times New Roman',
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                ),
                onPressed: (){
                  click_button_4_state = true;
                  // ToDo перекидывание в канал при нажатии /
                  // показ постов, которые мы выгрузили
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (click_button_4_state) {
                        return Colors.greenAccent;
                      }
                      else {
                        return Colors.pink;
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
                    ]
                ),
                onPressed: (){
                  click_button_5_state = true;
                  // ToDo сразу высвечивается оценка препода,
                  //  переход в новый раздел, где есть выбор между отзывами, материалами и т.д.
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (click_button_5_state) {
                        return Colors.greenAccent;
                      }
                      else {
                        return Colors.redAccent;
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
                    ]
                ),
                onPressed: (){
                  click_button_6_state = true;
                  // ToDo краткая история клуба, ссылка на канал
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (click_button_6_state) {
                        return Colors.greenAccent;
                      }
                      else {
                        return Colors.yellow;
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
                    ]
                ),
                onPressed: (){
                  click_button_7_state = true;
                  // ToDo рассказ про их деятельность, ссылки на их ресурсы
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (click_button_7_state) {
                        return Colors.greenAccent;
                      }
                      else {
                        return Colors.yellow;
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
                        'Преподаватели',
                        style: TextStyle(
                            fontFamily: 'Times New Roman',
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                ),
                onPressed: (){
                  click_button_8_state = true;
                  // ToDo форум для общения, можно подгрузить туда материалы для изучения английского
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (click_button_8_state) {
                        return Colors.greenAccent;
                      }
                      else {
                        return Colors.redAccent;
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
                        'Написать отзыв о преподавателе',
                        style: TextStyle(
                            fontFamily: 'Times New Roman',
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                ),
                onPressed: (){
                  click_button_9_state = true;
                  // ToDo сссылка на форму для отзыва
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (click_button_9_state) {
                        return Colors.greenAccent;
                      }
                      else {
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
                        'Критика и предложения',
                        style: TextStyle(
                            fontFamily: 'Times New Roman',
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                ),
                onPressed: (){
                  click_button_10_state = true;
                  // ToDo сссылка на форму для отзыва
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (click_button_10_state) {
                        return Colors.greenAccent;
                      }
                      else {
                        return Colors.white;
                      }
                    },
                  ),
                ),
              ),
            ],
        ),
            Positioned(
            bottom: 0,
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
