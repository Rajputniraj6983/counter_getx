import 'package:counter_getx/view/screen/Second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.grey,
        title: Center(child: Text('Navigation Page',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(onTap: () {
              Get.to(SecondPage(),transition: Transition.upToDown);
            },child: FlutterLogo()),
          ],
        ),
      ),
    );
  }
}
