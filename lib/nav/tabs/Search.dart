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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.blueAccent
          ),
          child: TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.search)
              )
          ),
        ),
        Container(
          height: 400,
          child: SearchItem(),
        )
      ],
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