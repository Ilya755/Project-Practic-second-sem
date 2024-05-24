import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MEPHIST 2.0'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('Новостной канал ИИКС от студента'),
            onTap: () {
              // ToDo переход в телегу по ссылке
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => HomeScreen()),
              // );
            },
          ),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('Новостной канал ИНТЭЛ от студента'),
            onTap: () {
              // ToDo переход в телегу по ссылке
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => NotificationsScreen()),
              // );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Преподаватели'),
            onTap: () {
              /*
                  ToDo переход в другое пространство по ссылке +
                     в ней реализация разбиения на отзывы, материалы мб что-то ещё
                  */
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SettingsScreen()),
              // );
            },
          ),
        ],
      ),
    );
  }
}



class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Уведомления'),
      ),
      body: Center(
        child: Text('Это страница уведомлений'),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки'),
      ),
      body: Center(
        child: Text('Это страница настроек'),
      ),
    );
  }
}
