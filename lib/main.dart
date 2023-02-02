import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int weight=0;
  int age=0;
  int height=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
          backgroundColor: const Color(0x45160B72),
        ),
        backgroundColor:const Color(0x45160B72),
        body: Center(
          child: Column(     //column for the main 3 containers
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Flexible(
                    fit:FlexFit.loose,
                    child:Container(  //first container
                      width: 430,
                      height:330,
                      child: Row(   //row for the first 2 containers
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Container(  //first left container
                            margin: EdgeInsets.all(10),
                            width: 185,
                            height:300,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(7),
                              color:const Color(0x691D0341),
                            ),
                            child:Column(   //column for symbol and text
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                IconButton(onPressed: (){}, icon: const Icon(Icons.male),color:Color(0xBEF8F5F5),iconSize: 100,),
                                const Text('Male',style: TextStyle(fontSize: 20,color:Color(0xBEF8F5F5))),
                              ],
                            ),
                          ),
                          Container(  //first right container
                            margin: const EdgeInsets.all(10),
                            width: 185,
                            height:300,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(7),
                              color:const Color(0x691D0341),
                            ),
                            child:Column(   //column for symbol and text
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                IconButton(onPressed: (){}, icon: const Icon(Icons.female),color:Color(0xBEF8F5F5),iconSize: 100,),
                                const Text('Female',style: TextStyle(fontSize: 20,color:Color(0xBEF8F5F5))),
                                ],
                            ),
                          ),],
                      ),
                    ),
                  ),
                  Flexible(
                    flex:2,
                      fit:FlexFit.loose,
                      child:Container(    //second container
                        width:390,
                        height:250,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(7),
                          color:const Color(0x691D0341),
                        ),
                        child:Column(   //column for height,text and slider
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text('Height',style:TextStyle(fontSize: 40,color:Color(0xBEF8F5F5))),
                            Text(height.toString()+"cm",style:const TextStyle(fontSize: 70,color:Color(0xBEF8F5F5))),
                            Slider(value: height.toDouble(), onChanged: (newHeight){
                              setState(()=> height= newHeight.toInt());
                            },
                              min:0,
                              max:250,
                              thumbColor: Colors.purple,
                            )
                            ],),
                      ),
                  ),
                  Flexible(
                    flex:1,
                    fit:FlexFit.loose,
                      child: Row(   //row for last two container
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Container(    //third container
                            margin: EdgeInsets.fromLTRB(10,10,10,0),
                            width: 185,
                            height:300,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(7),
                              color:const Color(0x691D0341),
                            ),
                            child:Column( //column for weight and buttons
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                const Text('Weight',style: TextStyle(fontSize: 24,color:Color(
                                    0xBEF8F5F5))),
                                Text(weight.toString(),style: TextStyle(fontSize: 64,color:Color(0xBEF8F5F5))),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:[
                                    Container(
                                      decoration:BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:const Color(0x45160B72),
                                      ),
                                    child:IconButton(onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    }, icon: Icon(Icons.remove),color:const Color(0xBEF8F5F5),iconSize: 30),
                                    ),
                                    Container(
                                      decoration:BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0x45160B72),
                                    ),
                                    child:IconButton(onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                  }, icon: Icon(Icons.add),color:const Color(0xBEF8F5F5),iconSize: 30),
                                    ),],),
                                ],
                            ),
                          ),
                          Container(
                            child:Column(   //column for Age and buttons
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text('Age',style: TextStyle(fontSize: 24,color:const Color(0xBEF8F5F5))),
                                Text(age.toString(),style: TextStyle(fontSize: 64,color:const Color(0xBEF8F5F5)),),
                                Container(
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:[
                                      Container(
                                        decoration:BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color(0x45160B72),
                                        ),
                                        child:IconButton(onPressed: (){
                                          setState(() {
                                            age--;
                                          });
                                        }, icon: Icon(Icons.remove),color:const Color(0xBEF8F5F5),iconSize: 30),
                                        ),
                                      Container(
                                        decoration:BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color(0x45160B72),
                                        ),
                                        child:IconButton(onPressed: (){
                                          setState(() {
                                            age++;
                                          });
                                        }, icon: Icon(Icons.add),color:const Color(0xBEF8F5F5),iconSize: 30),
                                      ),],),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.fromLTRB(10,10,10,0),
                            width: 185,
                            height:300,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(7),
                              color:const Color(0x691D0341),
                            ),


                          ),],
                    ),
                  ),
                ],
          ),
        ),

        ),
      );
  }
}
