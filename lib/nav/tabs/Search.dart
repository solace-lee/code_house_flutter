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
    Request().getSearchList(keys, (data){
      setState(() {
        this.studentList = SearchModel.fromJson(data).studentList;
      });
    });
  }

  _searchItem({studentList: List}) {
    List<Widget> widgets = [];
    for (int i = 0; i < studentList.length; i++ ) {
      widgets.add(
        ListTile(
            title: Text(studentList[i].studentname)
        )
      );
    }
    return Column(
      children: widgets
    );
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
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
        ]
      )
    );
  }
}

