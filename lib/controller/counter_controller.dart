import 'package:flutter/material.dart';

class CounterController extends GetxController{
   var num = 0.obs;

   void increase(){
     num++;
   }
}
