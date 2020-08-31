import 'package:codehouseflutter/routes/tabs/listData.dart';
import 'package:flutter/material.dart';

class LeanPage extends StatefulWidget {
  const LeanPage({Key key}) : super(key: key);
  _LeanPageState createState() => _LeanPageState();
}

class _LeanPageState extends State<LeanPage> {
  List<Widget> _getListData() {
    var list = listData.map((value) {
      return Container(
        child: Column(
          children: [
            Image.network(value['imageUrl']),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            OutlineButton.icon(
              onPressed: () {
                    Navigator.pushNamed(context, '/myExam', arguments: {
                      'title':'haha,成功了'
                    });
                    // Navigator.pushNamed(context, '/stateTest');
                },
              icon: Text("\uE90D",
                style: TextStyle(
                    fontFamily: "MaterialIcons",
                    fontSize: 28.0,
                    color: Colors.green
                ),
              ),
              label: Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: '去吗?',
                      style: TextStyle(
                        color: Colors.grey
                      )
                    ),
                    TextSpan(
                      text: '新',
                      style: TextStyle(color: Colors.blue)
                    )
                  ]
                ))
            )
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.yellow, width: 1)),
      );
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('学习页')),
        body: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            childAspectRatio: 0.7,
            mainAxisSpacing: 20.0,
            padding: EdgeInsets.all(20),
            children: this._getListData()));
  }
}
