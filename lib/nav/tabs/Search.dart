import 'package:codehouseflutter/model/search/searchModel.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';

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

  loadData(keys) async {
    String url = 'https://api.cleanown.cn/student/get';
    var dio=Dio();
    dio.transformer = new FlutterTransformer(); // replace dio default transformer
    Response response = await dio.get(url, queryParameters: {'hotkey': '古鹏'});
    print(SearchModel.fromJson(response.data).studentList[0].mark);
    // obj.runtimeType.toString() 判断数据类型
    try {
      print('对了');
    } catch (e) {
      print(e);
    }
  }



  @override
  void initState() {
    super.initState();
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
