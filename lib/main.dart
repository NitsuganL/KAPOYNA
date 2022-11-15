import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(List<String> args) {
 
 runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
 ));
}

class MyApp extends StatefulWidget{ 
   const MyApp({Key? key}) : super(key: key);
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? result=0,num1=0,num2=0;
  add(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! + num2!;
    });
  }
  sub(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! - num2!;
    });
  }
  mul(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! * num2!;
    });
  }
  div(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! ~/ num2!;
    });
  }
  
  @override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text("Basic Calculator"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text("RESULT : $result",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 40,),
          TextFormField(
          controller: controller1,
            decoration: InputDecoration(
              labelText: "Enter First Number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                )
            ),
            onChanged: (val) => num2 = int.tryParse(val),
          ),
          const SizedBox(height: 40,),
           TextFormField(
            controller: controller2,
            decoration: InputDecoration(
              labelText: "Enter Second Number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                )
            ),
            onChanged: (val) => num2 = int.tryParse(val),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              ElevatedButton(onPressed: (){
              add();
              controller1.clear();
              controller2.clear();
              }, child: const Text(("(+)"))),
              ElevatedButton(onPressed: (){
                sub();
                controller1.clear();
              controller2.clear();
              }, child: const Text(("(-)"))),
            ],
          ),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              ElevatedButton(onPressed: (){
              mul();
              controller1.clear();
              controller2.clear();
              }, child: const Text(("(*)"))),
              ElevatedButton(onPressed: (){
                div();
                controller1.clear();
              controller2.clear();
              }, child: const Text(("(/)"))),
            ],
          ),
          
        ],
      ),
    ),
  );
  
  
}
}









































// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';

// void main() async {
//   runApp( MaterialApp(
//     debugShowCheckedModeBanner: false,
//       title: 'Basic Calculator',
//       home: MyApp(),
//   ));
// }


// @override
// class MyApp extends StatelessWidget {
//   TextEditingController controller1 = TextEditingController();
//   TextEditingController controller2 = TextEditingController();
//   int? result=0,num1=0,num2=0;
//   add(){
//       setState(() {
//         num1 = int.parse(controller1.text);
//         num2 = int.parse(controller2.text);
//         result = num1! + num2!;
//       });
    
//   }
//   sub(){
//       setState(() {
//         num1 = int.parse(controller1.text);
//         num2 = int.parse(controller2.text);
//         result = num1! - num2!;
//       });
//   }
//   mul(){
//       setState(() {
//         num1 = int.parse(controller1.text);
//         num2 = int.parse(controller2.text);
//         result = num1! * num2!;
//       });
//   }
//   divi(){
//       setState(() {
//         num1 = int.parse(controller1.text);
//         num2 = int.parse(controller2.text);
//         result = num1! ~/ num2!;
//       });
//   }

//   MyApp({super.key});
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Basic Calculator'),
//       ),
      
//      body: Padding(
//       padding:  const EdgeInsets.all(20.0),
//       child:  Column(
//         children: [
//           //  Text("Result : $result",
//           //   ),
//           TextFormField( 
//             controller: controller1,    
//             decoration: InputDecoration(
//               labelText: "Enter First Number",
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20)
//               )
//             ),
//             onChanged: (val) => num1 = int.tryParse(val),
//           ),
//           TextFormField(
//             controller: controller2,
//             decoration: InputDecoration(
//               labelText: "Enter Second Number",
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20)
//               )
//             ),
//             onChanged: (val) => num2 = int.tryParse(val),
//           ),
//           Row(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
             
//               ElevatedButton(onPressed:(){
//                 add();
//                 controller1.clear();
//                 controller2.clear();
//                 }, child: const Text("(+)")),
//               ElevatedButton(onPressed:(){
//                 sub();
//                 controller1.clear();
//                 controller2.clear();
//                 }, child: const Text("(-)")),
             
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//                ElevatedButton(onPressed:(){
//                 mul();
//                 controller1.clear();
//                 controller2.clear();
//                 }, child: const Text("(x)")),
//               ElevatedButton(onPressed:(){
//                 divi();
//                 controller1.clear();
//                 controller2.clear();
//                 }, child: const Text("(÷)")),
//             ],
//           )
//         ],
//       ),
//      ),
//     );
//   }

  

// }

// // void setState(Null Function() param0) {
// }

