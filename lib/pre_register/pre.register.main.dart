import 'package:flutter/material.dart';
import 'package:hdt/hdt.drawer.dart';
import 'package:hdt/pre_register/pre.register.body.dart';

class PreRegisterMainPage extends StatelessWidget {
  final courseData;
  final String name, semester, studentID, major, major2;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  PreRegisterMainPage(this.courseData, this.name, this.semester, this.studentID, this.major, this.major2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PreRegisterBodyPage(),
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(
              Icons.menu,
              color: Colors.black,),
            onPressed: () =>
                _scaffoldKey.currentState.openDrawer()),
        backgroundColor: Colors.white,
        title: Text('예비수강 조회',
          style: TextStyle(
              color: Colors.black),),
        centerTitle: true,
      ),
      drawer: HDTDrawer(
          courseData, name, semester, studentID, major, major2),
      resizeToAvoidBottomInset: false,
    );
  }
}