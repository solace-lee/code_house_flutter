import 'package:codehouseflutter/model/search/searchModel.dart';
import 'package:codehouseflutter/model/search/studentModel.dart';
import 'package:codehouseflutter/request/request.dart';
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
                spacing: 10.0,
                runSpacing: 10.0,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: _detailItem(
                    studentList[i].keywords, studentList[i].detail)),
            Divider(),
            Text(
              studentList[i].createuser,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color.fromRGBO(100, 100, 100, 0.8),
              ),
            ),
            ListTile(
              dense: true,
              subtitle: Text(studentList[i].meta['updateAt'].toString()),
              // title: Text(DateTime.fromMillisecondsSinceEpoch(studentList[i].meta['updateAt'])),
            ),
          ])));
    }
    return Column(children: widgets);
  }

  _detailItem(keywords, detail) {
    List<Widget> widget = [];
    for (int i = 0; i < keywords.length; i++) {
      widget.add(Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            keywords[i].toString(),
            style: TextStyle(
                // backgroundColor: Color.fromRGBO(200, 200, 200, 1),
                color: Color.fromRGBO(100, 100, 100, 1),
                decorationStyle: TextDecorationStyle.solid),
          ),
          Text(detail[i].toString())
        ],
      ));
    }
    ;
    return widget;
  }

  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
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
