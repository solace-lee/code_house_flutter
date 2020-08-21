import 'nav/lean.dart';
import 'nav/nav.dart';
 import 'nav/myExam.dart';

final routes = {
    '/home': (context) => NavBar(),
    '/myExam': (context, {argments}) => MyExam(argments: argments),
    '/lean': (context) => LeanPage()
 };