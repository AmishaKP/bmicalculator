import 'package:flutter/material.dart';
class calculator1 extends StatefulWidget {
  const calculator1({Key? key}) : super(key: key);

  @override
  State<calculator1> createState() => _calculator1State();
}

class _calculator1State extends State<calculator1> {
  final TextEditingController height=TextEditingController();
  final TextEditingController weight=TextEditingController();
  double result = 0;
  void calculate(){
    setState(() {

    });
    double heightd=double.parse(height.text)/100;
    double weightd=double.parse(weight.text);
    result=weightd/(heightd*heightd);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
   body: Center(
     child: Padding(
       padding: const EdgeInsets.all(40),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           TextField(
             controller: height,
             decoration: InputDecoration(
               fillColor: Colors.pinkAccent,
               filled: true,
               hintText: 'height'
             ),
           ),
        SizedBox(height: 45,),
           TextField(
             controller: weight,
           decoration: InputDecoration(
           fillColor: Colors.pinkAccent,
             filled: true,
             hintText: 'weight'
           ),
           ),
        SizedBox(height: 45,),
           TextButton(
               style: TextButton.styleFrom(backgroundColor: Colors.indigo),
               onPressed: (){
                 calculate();
               }, child: Text('calculator'),

           ),
       SizedBox(height: 45,),
            Text(result.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
         ],
       ),
     ),
   ),
    );
  }
}
