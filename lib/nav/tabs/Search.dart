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
  var keyWords;

  @override
  void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: '请输入公司名',
              prefixIcon: Icon(Icons.search),
              // border: InputBorder
            ),
            // controller: username,
            onChanged: (value) {
              setState(() {
                this.keyWords = value;
              });
            },
          ),
          SizedBox(height: 20),
          Container(
            // width: double.infinity,
            child: RaisedButton(
              child: Text('搜索'),
              onPressed: () {
                print(this.keyWords);
              },
            ),
          )
        ]
      )
    );
  }
}

class SearchItem extends StatefulWidget {
  SearchItem({Key key}) : super(key: key);

  @override
  _SearchItemState createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
              title: Text('列表项')
          ),
          ListTile(
              title: Text('列表项')
          )
        ],
      ),
    );
  }
}