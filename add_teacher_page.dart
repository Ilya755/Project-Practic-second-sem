import 'package:flutter/material.dart';
import 'database_helper.dart';
import 'teacher.dart';

class AddTeacherPage extends StatefulWidget {
  @override
  _AddTeacherPageState createState() => _AddTeacherPageState();
}

class _AddTeacherPageState extends State<AddTeacherPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _review = '';
  double _rating = 0.0;
  String _textbookPath = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Добавить преподавателя'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Имя'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите имя';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Отзыв'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите отзыв';
                  }
                  return null;
                },
                onSaved: (value) {
                  _review = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Рейтинг'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите рейтинг';
                  }
                  return null;
                },
                onSaved: (value) {
                  _rating = double.parse(value!);
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Путь к учебнику'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите путь к учебнику';
                  }
                  return null;
                },
                onSaved: (value) {
                  _textbookPath = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();
                    Teacher newTeacher = Teacher(
                      id: 0,
                      name: _name,
                      review: _review,
                      rating: _rating,
                      textbookPath: _textbookPath,
                    );
                    DatabaseHelper.instance.insertTeacher(newTeacher);
                    Navigator.pop(context);
                  }
                },
                child: Text('Добавить'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}