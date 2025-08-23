import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/pages/home_for_teacher.dart';

class LearnerHomePage extends StatefulWidget {
  const LearnerHomePage({super.key});

  @override
  State<LearnerHomePage> createState() => _LearnerHomePageState();
}

class _LearnerHomePageState extends State<LearnerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learner Home'),
        centerTitle: false,
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.black, fontFamily: 'LilitaOne'),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
            child: Icon(
              Icons.school_rounded,
              size: 40,
              color: CupertinoColors.systemYellow,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: IconButton(
              icon: const Icon(Icons.change_circle_sharp),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=> TeacherHomePage()));
              }, // เปลี่ยน role learner -> teacher
              iconSize: 40,
              color: CupertinoColors.systemYellow,
            ),
          )
        ],
      ),
      
    );
  }
}