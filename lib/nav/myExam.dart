import 'package:flutter/material.dart';

class MyExam extends StatelessWidget {
    var argments;
//    const MyExam({Key key, this.argments}) : super(key: key);
    MyExam({ argments }) {
      argments = argments;
    }

//  String title;
//  MyExam({
//    this.title="表单"
//  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.argments['title'])),
      body: Container(child: Text('我的试卷页')),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

// class MyExam extends StatefulWidget {
//   MyExam({Key key}) : super(key: key);

//   @override
//   _MyExamState createState() => _MyExamState();
// }

// class _MyExamState extends State<MyExam> {
//   String title;
//   _MyExamState({
//     this.title="表单"
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//        child: Text('我的试卷页？'),
//     );
//   }
// }
