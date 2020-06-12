import 'package:codehouseflutter/model/search/searchModel.dart';
import 'package:codehouseflutter/request/api.dart';
import 'package:codehouseflutter/request/http.dart';
import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
// import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';

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
  var keyWords;

  @override
  void initState() {
    super.initState();
  }

  loadData(keys) async {
    DioManager.getInstance().get(
      searchStudent, {'hotkey': '古鹏'},
      (data) {
        print(SearchModel.fromJson(data).studentList[0].id);
        // obj.runtimeType.toString() 判断数据类型
        // setState(() {
        //  更新UI等
        // });
      },
      //错误回调
      (error){
        
      }
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
              print(this.keyWords + value + '测试');
              this.loadData(value);
            },
            // controller: username,
            onChanged: (value) {
              setState(() {
                this.keyWords = value;
              });
            },
          ),
          SearchItem()
        ]
      )
    );
  }
}

class SearchItem extends StatelessWidget {
  const SearchItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text('列表项')
    );
  }
}
