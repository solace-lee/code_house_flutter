import 'package:codehouseflutter/common/request/request.dart';
import 'package:codehouseflutter/model/search/searchModel.dart';
import 'package:codehouseflutter/model/search/studentModel.dart';

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: 搜索页
    return SearchList();
  }
}

class SearchList extends StatefulWidget {
  SearchList({Key key}) : super(key: key);

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  List<StudentModel> studentList = [];
  final int x = 1524567890;

  @override
  void initState() {
    super.initState();
  }

  loadData(keys) async {
    Request().getSearchList(keys, (data) {
      setState(() {
        this.studentList = SearchModel.fromJson(data).studentList;
      });
    });
  }

  _searchItem({studentList: List}) {
    List<Widget> widgets = [];
    for (int i = 0; i < studentList.length; i++) {
      widgets.add(Card(
          elevation: 4.0,
          child: Column(children: <Widget>[
            ListTile(
              title: Text(studentList[i].mark),
              subtitle: Text(
                  studentList[i].studentname + ' ' + studentList[i].studentid),
            ),
            Divider(),
            Wrap(
                alignment: WrapAlignment.center,
                spacing: 0,
                runSpacing: 4.0,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: _detailItem(
                    studentList[i].keywords, studentList[i].detail)),
            Divider(),
            ListTile(
              dense: true,
              title: Text('创建人:' + studentList[i].createuser),
              subtitle: Text('创建日期:' +
                  DateTime.fromMillisecondsSinceEpoch(
                          studentList[i].meta.updateAt)
                      .toString()),
            ),
          ])));
    }
    return Column(children: widgets);
  }

  _detailItem(keywords, detail) {
    List<Widget> widget = [];
    for (int i = 0; i < keywords.length; i++) {
      widget.add(Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(200, 200, 200, 0.6),
            width: 1.0,
            style: BorderStyle.solid
          )
        ),
        height: 50,
        padding: EdgeInsets.fromLTRB(6, 2, 6, 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              keywords[i],
              style: TextStyle(
                  // backgroundColor: Color.fromRGBO(200, 200, 200, 1),
                  color: Color.fromRGBO(100, 100, 100, 1),
              ),
            ),
            Text(detail[i])
          ],
        )));
    }
    return widget;
  }

  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
        child: ListView(children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: '请输入完整的学生姓名',
              prefixIcon: Icon(Icons.search),
              // border: InputBorder
            ),
            onSubmitted: (value) {
              this.loadData(value);
            },
            // controller: username,
            onChanged: (value) {
              // this.loadData(value);
            },
          ),
          _searchItem(studentList: this.studentList)
        ]));
  }
}
