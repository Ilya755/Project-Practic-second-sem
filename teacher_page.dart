import 'package:flutter/material.dart';
import 'teacher_detail_page.dart';
import 'database_helper.dart';
import 'teacher.dart';

class TeacherPage extends StatefulWidget {
  @override
  _TeacherPageState createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  late Future<List<Teacher>> _teacherList;
  List<Teacher> _filteredTeachers = [];
  TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  String _searchResultMessage = '';
  int? _highlightedIndex;

  @override
  void initState() {
    super.initState();
    _teacherList = _loadTeachers();
  }

  Future<List<Teacher>> _loadTeachers() async {
    List<Teacher> teachers = await DatabaseHelper.instance.getTeachers();
    teachers.sort((a, b) => b.rating.compareTo(a.rating));
    return teachers;
  }

  void _searchTeachers() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      _teacherList.then((teachers) {
        _filteredTeachers = teachers.where((teacher) {
          return teacher.name.toLowerCase().contains(query);
        }).toList();

        Teacher? exactMatch;
        for (var teacher in teachers) {
          if (teacher.name.toLowerCase() == query) {
            exactMatch = teacher;
            break;
          }
        }

        if (exactMatch != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TeacherDetailPage(teacher: exactMatch!),
            ),
          );
        } else {
          Teacher? foundTeacher;
          for (var teacher in teachers) {
            if (teacher.name.toLowerCase().contains(query)) {
              foundTeacher = teacher;
              break;
            }
          }

          if (foundTeacher != null) {
            int index = teachers.indexOf(foundTeacher);
            _scrollController.animateTo(
              index * 72.0,
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
            );
            _highlightedIndex = index;
            _searchResultMessage = '';

            Future.delayed(Duration(seconds: 1), () {
              setState(() {
                _highlightedIndex = null;
              });
            });
          } else {
            _highlightedIndex = null;
            _searchResultMessage = 'Такого преподавателя нет в списке';
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Преподаватели'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      labelText: 'Поиск преподавателя',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (value) {
                      _searchTeachers();
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: _searchTeachers,
                ),
              ],
            ),
          ),
          _searchResultMessage.isNotEmpty
              ? Container(
            color: Colors.red,
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: Text(
                _searchResultMessage,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
              : Container(),
          Expanded(
            child: FutureBuilder<List<Teacher>>(
              future: _teacherList,
              builder: (context, snapshot) {
                if (!snapshot.hasData || (snapshot.data?.isEmpty ?? true)) {
                  return Center(
                    child: Text('Нет данных о преподавателях'),
                  );
                } else {
                  List<Teacher> teachers = _filteredTeachers.isEmpty
                      ? snapshot.data!
                      : _filteredTeachers;
                  return ListView.builder(
                    controller: _scrollController,
                    itemCount: teachers.length,
                    itemBuilder: (context, index) {
                      Teacher teacher = teachers[index];
                      return Container(
                        color: _highlightedIndex == index
                            ? Colors.yellow
                            : Colors.transparent,
                        child: ListTile(
                          leading: Text('#${index + 1}'),
                          title: Text(teacher.name),
                          subtitle: Text('Рейтинг: ${teacher.rating}'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    TeacherDetailPage(teacher: teacher),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
