import 'package:counter_getx/controller/counter_controller.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  final CounterController  counterController = Get.put(CounterController());
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Nahi ho rah hai',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
         Container(height: 850,width: 380,
           child: obx(() => Text(counterController.num.toString(),style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.w900),)),
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
         ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {
                counterController.increase();
              }, icon: Icon(Icons.add,size: 20,color: Colors.black,))
            ],
          )
        ],
      ),
    );
  }
}
