// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:flutter/material.dart';

import 'buttons.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
final TextEditingController t1 = TextEditingController(text: "");
final TextEditingController t2 = TextEditingController(text: "");
  double num1=0,num2=0,sum=0;

  void doAddition(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum=num1+num2;
    });
  }

void dosub(){
  setState(() {
    num1 = double.parse(t1.text);
    num2 = double.parse(t2.text);
    sum=num1-num2;
  });
}
void doMul(){
  setState(() {
    num1 = double.parse(t1.text);
    num2 = double.parse(t2.text);
    sum=num1*num2;
  });
}

void dodiv(){
  setState(() {
    num1 = double.parse(t1.text);
    num2 = double.parse(t2.text);
    sum=num1/num2;
  });
}

void doClear(){
    setState(()  {
      t1.text="0";
      t2.text="0";
    });
}

void doCleart(){
    setState(() {
      sum=0;
    });
}




@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
        backgroundColor: Colors.grey,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 38.0),
                child: Text("The answer is: $sum",style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                ),
                 ),
              ),
              SizedBox(height: 30,),
              TextField(
                keyboardType: TextInputType.number,
                controller: t1,
                decoration: InputDecoration(
                  hintText: "Enter Number 1",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3,color: Colors.grey),
                    borderRadius:BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3,color: Colors.grey),
                    borderRadius:BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height:20),
              TextField(
                controller: t2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Number 2",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3,color: Colors.grey),
                    borderRadius:BorderRadius.circular(15),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3,color: Colors.grey),
                      borderRadius:BorderRadius.circular(15),
                    ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Rbutton(textb: "+",todo: doAddition,),
                  SizedBox(width: 50,),
                  Rbutton(textb: "-",todo: dosub,),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Rbutton(textb: "*",todo: doMul,),
                  SizedBox(width: 50,),
                  Rbutton(textb: "/",todo: dodiv,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Rbutton(textb: 'Clear', todo: doClear),
                  SizedBox(width: 10,),
                  Rbutton(textb: 'Clear All', todo: doCleart)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
