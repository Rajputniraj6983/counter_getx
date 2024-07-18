import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CounterController extends GetxController{
   var num = 0.obs;

   void increase(){
     num++;
   }

   void reduce()
   {
     num--;
   }
}
