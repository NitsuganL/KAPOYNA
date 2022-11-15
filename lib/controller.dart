import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerCalc extends GetxController{
  var num1=0,num2=0,opt="",result=0;
 Calcu(){
  switch (opt) {
    case "+":
      result = num1 + num2;
      break;
      case "-":
      result = num1 - num2;
      break;
      case "*":
      result = num1 * num2;
      break;
      case "/":
      result = num1 ~/ num2;
      break;
    default:
  }
}
}

