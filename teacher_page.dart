import 'package:flutter/material.dart';
import 'teacher.dart';
import 'database_helper.dart';

class TeacherPage extends StatefulWidget {
  @override
  _TeacherPageState createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  late Future<List<Teacher>> _teacherList;

  @override
  void initState() {
    super.initState();
    _teacherList = DatabaseHelper.instance.getTeachers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Преподаватели'),
      ),
      body: FutureBuilder<List<Teacher>>(
        future: _teacherList,
        builder: (context, snapshot) {
          if (!snapshot.hasData || (snapshot.data?.isEmpty ?? true)) {
            return Center(
              child: Text('Нет данных о преподавателях'),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                Teacher teacher = snapshot.data![index];
                return ListTile(
                  title: Text(teacher.name),
                  subtitle: Text('Рейтинг: ${teacher.rating}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}