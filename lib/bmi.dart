import 'dart:math';


import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
 bool male=true;
 bool female= false;
 double slider = 150.0;
 int weight = 60;
 int age = 20;
 double result= 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(

          children: [
            Expanded(
              child:
              Padding(padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child:


                      GestureDetector(
                        onTap: () {
                       setState(() {
                         male = true;
                       });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Icon(Icons.male, color: Colors.white, size: 100,),

                              Text("MALE", style: TextStyle(color: Colors.white,
                                  fontSize: 22,
                                  fontStyle: FontStyle.normal),
                              )


                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child:


                      GestureDetector(
                        onTap: () {
                     setState(() {
                       male = true;
                     });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Icon(
                                Icons.female, color: Colors.white, size: 100,),

                              Text(
                                "FEMALE", style: TextStyle(color: Colors.white,
                                  fontSize: 22,
                                  fontStyle: FontStyle.normal),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Height', style: TextStyle(color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w900),
                          ),
                          SizedBox(height: 10,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text('${slider.round()}', style: TextStyle(color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700),
                              ),
                              SizedBox(width: 15,),
                              Text('cm', style: TextStyle(
                                  color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                           Slider(inactiveColor: Colors.grey,activeColor: Colors.white,
                           value: slider,
                            max: 220.0,
                            min: 10.0,

                            onChanged: (value){
                            setState(() {
slider=value;
                            });
                            },

                          ),
                        ],

                      ),
                    ),
                  ],
                ),
              ),
            ),
            ),
            Expanded(child:
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.black, // Change weight container color
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'weight',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
weight--;
                                  });
                                },
                                heroTag: 'weight-',
                                backgroundColor: Colors.pink,
                                // Change button color
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
weight++;
                                  });
                                },
                                heroTag: 'weight+',
                                backgroundColor: Colors.pink,
                                // Change button color
                                mini: true,
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.black, // Change age container color
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Age',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
age--;
                                  });
                                },
                                heroTag: 'Age_',
                                backgroundColor: Colors.pink,
                                // Change button color
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
age++;
                                  });
                                },
                                heroTag: 'Age+',
                                backgroundColor: Colors.pink,
                                // Change button color
                                mini: true,
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),
            ElevatedButton(

              onPressed: (){
                double result = weight / pow(slider / 100, 2);
                print(result.round());
                Navigator.push(context, MaterialPageRoute(builder: (context) => Result(ismale: male, Age: age, height: slider, weight: weight,),
                  ),
                );
              },
              child:  Text(
              'CALCULATE',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Change button text color
              ),
            ),),

            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}


