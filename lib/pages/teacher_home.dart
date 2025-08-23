import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

class TeacherHome extends StatefulWidget {
  const TeacherHome({super.key});

  @override
  State<TeacherHome> createState() => _TeacherHomeState();
}

class _TeacherHomeState extends State<TeacherHome> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher Home'),
        centerTitle: false,
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.black, fontFamily: 'LilitaOne'),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
            child: Icon(
              Icons.co_present_rounded,
              size: 40,
              color: Colors.green,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: IconButton(
              icon: const Icon(Icons.change_circle_sharp),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=> const HomePage()));
              }, // เปลี่ยน role teacher -> learner
              iconSize: 40,
              color: Colors.green,
            ),
          )
        ],
      ),

    );
  }
}