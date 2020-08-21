import 'package:flutter/material.dart';

// class MyExam extends StatelessWidget {
//     final argments;
//     MyExam({ this.argments });


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('haha')),
//       body: Container(child: Text('我的试卷页')),
//       floatingActionButton: FloatingActionButton(
//         child: Text('返回'),
//         onPressed: () {
//           // Navigator.of(context).pop();
//         },
//       ),
//     );
//   }
// }

class MyExam extends StatefulWidget {
Map arguments;
  MyExam({Key key, this.arguments}) : super(key : key);
  @override
  _MyExamState createState() => _MyExamState(arguments: this.arguments);
}

class _MyExamState extends State<MyExam> {
  Map arguments;
  _MyExamState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments != null ? arguments['title'] : '没有标题')
      ),
      body: Container(
       child: RaisedButton(
        child: Text('返回'),
        onPressed: () {
          Navigator.of(context).pop();
       }),
      )
    );
  }
}
