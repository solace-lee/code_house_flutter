import 'package:flutter/material.dart';

class MyExam extends StatefulWidget {
  final Map arguments;
  MyExam({Key key, this.arguments}) : super(key: key);
  @override
  _MyExamState createState() => _MyExamState(arguments: this.arguments);
}

class _MyExamState extends State<MyExam> {
  Map arguments;
  _MyExamState({this.arguments});

  bool _switchSelected = true; // 维护单选开关状态
  bool _checkboxSelected = true; // 维护复选框状态


  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(arguments != null ? arguments['title'] : '没有标题')),
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            Switch(value: _switchSelected, onChanged: (val) {
              setState(() {
                _switchSelected = val;
              });
            }),
            Checkbox(value: _checkboxSelected, onChanged: (val) {
              setState(() {
                _checkboxSelected = val;
              });
            }),
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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal:24.0),
          child: Form(
            key: _formKey, // 设置globalKey，用于后面获取FormState
            autovalidate: true, // 开启自动校验
            child: Column(
              children: <Widget>[
                TextFormField(
                  autofocus: true,
                  controller: _unameController,
                  decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    icon: Icon(Icons.person)
                  ),
                  validator: (v) {
                    return v
                            .trim()
                            .length > 0 ? null : "用户名不能为空";
                  }
                ),
                TextFormField(
                  controller: _pwdController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "您的登录密码",
                    icon: Icon(Icons.lock)
                  ),
                  validator: (v) {
                    return v
                            .trim()
                            .length > 5 ? null : "密码不能少于6位";
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0, bottom: 28.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          child: Text("登录"),
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          onPressed: () {
                            print(_formKey.currentState.toString());
                            if ((_formKey.currentState as FormState).validate()) {
                              print('可以提交数据了');
                            }
                          }
                        )
                      )
                    ],
                  ),
                ),
                Builder(builder: (context) {
                  return RaisedButton(
                      padding: EdgeInsets.all(15.0),
                      child: Text("登录"),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onPressed: () {
                        print(_formKey.currentState.toString());
                        if (Form.of(context).validate()) {
                          print('可以提交数据了');
                        }
                      }
                    );
                }),
              ],
            ),
          ),
        ),
    );
  }
}
