import 'package:flutter/material.dart';
import 'teacher.dart';

class TeacherDetailPage extends StatefulWidget {
  final Teacher teacher;

  TeacherDetailPage({required this.teacher});

  @override
  _TeacherDetailPageState createState() => _TeacherDetailPageState();
}

class _TeacherDetailPageState extends State<TeacherDetailPage> {
  Color _getColorForRating(double rating) {
    if (rating >= 4.5) {
      return Colors.green;
    } else if (rating >= 3.0) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  void _addReview(String review) {
    setState(() {
      widget.teacher.reviews.add(review);
    });
  }

  List<Widget> _buildReviewList(List<String> reviews) {
    final highlightWords = ['Лекции', 'Семинары', 'Дополнительно'];

    return reviews.expand((review) {
      return review.split(RegExp(r'\n{2,}')).expand((subReview) {
        return subReview.split('\n').map((line) {
          if (line.trim().isEmpty) return Container();
          final textSpans = _buildTextSpans(line, highlightWords);
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: RichText(
              text: TextSpan(children: [
                if (!subReview.startsWith(line)) // Добавляем точку только перед строками, не обернутыми в \n\n
                  TextSpan(
                    text: '• ',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ...textSpans,
              ]),
            ),
          );
        }).toList();
      }).toList();
    }).toList();
  }

  List<TextSpan> _buildTextSpans(String text, List<String> highlightWords) {
    List<TextSpan> spans = [];
    int start = 0;

    for (final word in highlightWords) {
      final index = text.indexOf(word, start);
      if (index != -1) {
        if (index > start) {
          spans.add(TextSpan(text: text.substring(start, index)));
        }
        spans.add(TextSpan(
          text: word,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ));
        start = index + word.length;
      }
    }

    if (start < text.length) {
      spans.add(TextSpan(text: text.substring(start)));
    }

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.teacher.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: _getColorForRating(widget.teacher.rating),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      widget.teacher.rating.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Отзывы:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ..._buildReviewList(widget.teacher.reviews),
              SizedBox(height: 20),
              Text(
                'Учебные материалы:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ...widget.teacher.materials.keys.map((folderName) {
                return ExpansionTile(
                  title: Text(folderName),
                  children: widget.teacher.materials[folderName]!.map((file) {
                    return ListTile(
                      title: Text(file),
                      onTap: () {
                        // Открытие или скачивание файла
                      },
                    );
                  }).toList(),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
