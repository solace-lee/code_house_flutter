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
  final Map arguments;
  MyExam({Key key, this.arguments}) : super(key: key);
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
            title: Text(arguments != null ? arguments['title'] : '没有标题')),
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.itying.com/images/flutter/2.png"),
                      fit: BoxFit.cover)),
              child: ListView(
                children: <Widget>[Text('我是一个头部')],
              ),
            ),
            ListTile(
              title: Text("个人中心"),
              leading: CircleAvatar(child: Icon(Icons.people)),
            ),
            Divider(),
            ListTile(
              title: Text("系统设置"),
              leading: CircleAvatar(child: Icon(Icons.settings)),
            )
          ],
        )),
        body: Container(
          child: RaisedButton(
              child: Text('返回'),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ));
  }
}
