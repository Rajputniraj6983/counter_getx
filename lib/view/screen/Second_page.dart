import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Secnd-page",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Icon(Icons.access_alarm,size: 50,color: Colors.white,)
        ],
      ),
    );
  }
}
