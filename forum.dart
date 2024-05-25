// import 'package:flutter/material.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ForumPage(),
//     );
//   }
// }
//
// // class TopicPage extends StatelessWidget {
// //   final int topicNumber;
// //
// //   TopicPage({required this.topicNumber});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Тема $topicNumber'),
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: ListView.builder(
// //               itemCount: 20, // Замените на количество сообщений в теме
// //               itemBuilder: (context, index) {
// //                 return ListTile(
// //                   title: Text('Сообщение ${index + 1}'),
// //                   subtitle: Text('Автор: Пользователь'),
// //                 );
// //               },
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: ElevatedButton(
// //               onPressed: () {
// //                 // Действие при нажатии на кнопку "Новое сообщение"
// //                 // Возможно, открытие диалога для написания нового сообщения
// //               },
// //               child: Text('Новое сообщение'),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
// class ForumPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Форум: Клуб любителей английского языка'),
//       ),
//       body: ForumList(),
//     );
//   }
// }
//
// class ForumList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 10, // Замените на количество тем на вашем форуме
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text('Тема ${index + 1}'),
//           subtitle: Text('Описание темы ${index + 1}'),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => TopicPage(topicNumber: index + 1),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }
//
// class TopicPage extends StatefulWidget {
//   final int topicNumber;
//
//   TopicPage({required this.topicNumber});
//
//   @override
//   _TopicPageState createState() => _TopicPageState();
// }
//
// class _TopicPageState extends State<TopicPage> {
//   late TextEditingController _messageController;
//
//   @override
//   void initState() {
//     super.initState();
//     _messageController = TextEditingController();
//   }
//
//   @override
//   void dispose() {
//     _messageController.dispose();
//     super.dispose();
//   }
//
//   void _sendMessage() async {
//     // Сохранение сообщения в базу данных
//     final Database database = await openDatabase(
//       join(await getDatabasesPath(), 'forum_database.db'),
//       onCreate: (db, version) {
//         return db.execute(
//           'CREATE TABLE messages(id INTEGER PRIMARY KEY AUTOINCREMENT, topicNumber INTEGER, message TEXT)',
//         );
//       },
//       version: 1,
//     );
//
//     await database.insert(
//       'messages',
//       {'topicNumber': widget.topicNumber, 'message': _messageController.text},
//     );
//
//     Navigator.pop(context); // Закрытие диалога после сохранения
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Тема ${widget.topicNumber}'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: FutureBuilder<List<Map<String, dynamic>>>(
//               future: _fetchMessages(),
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return Center(child: CircularProgressIndicator());
//                 } else if (snapshot.hasError) {
//                   return Center(child: Text('Ошибка при загрузке сообщений'));
//                 } else {
//                   final messages = snapshot.data ?? [];
//                   return ListView.builder(
//                     itemCount: messages.length,
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         title: Text(messages[index]['message']),
//                       );
//                     },
//                   );
//                 }
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: Text('Новое сообщение'),
//                       content: TextField(
//                         controller: _messageController,
//                         decoration: InputDecoration(hintText: 'Введите ваше сообщение'),
//                       ),
//                       actions: [
//                         TextButton(
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           child: Text('Отмена'),
//                         ),
//                         ElevatedButton(
//                           onPressed: _sendMessage,
//                           child: Text('Отправить'),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//               child: Text('Новое сообщение'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Future<List<Map<String, dynamic>>> _fetchMessages() async {
//     final Database database = await openDatabase(
//       join(await getDatabasesPath(), 'forum_database.db'),
//     );
//
//     final List<Map<String, dynamic>> messages = await database.rawQuery(
//       'SELECT * FROM messages WHERE topicNumber = ?',
//       [widget.topicNumber],
//     );
//
//     return messages;
//   }
// }
