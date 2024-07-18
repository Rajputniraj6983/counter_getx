import 'package:counter_getx/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
            child: Text(
          'Getx Counter',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        )),
      ),
      body: Column(
        children: [
          Container(
            height: 650,
            width: 380,
            child: Obx(() => Center(
                    child: Text(
                  counterController.num.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w900),
                ))),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    counterController.increase();
                  },
                  icon: Container(height: 80,width: 80,
                    child: Icon(
                      Icons.add,
                      size: 50,
                      color: Colors.white,
                    ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey),
                  )),
              IconButton(
                  onPressed: () {
                    counterController.reduce();
                  },
                  icon: Container(height: 80,width: 80,
                    child: Icon(
                      Icons.remove,
                      size: 50,
                      color: Colors.white,
                    ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
