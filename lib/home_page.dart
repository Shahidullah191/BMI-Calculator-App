import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  bool isMale = true;
  var cardColor = Color(0xff1D1E33);
  var selectedGender;
  int height = 170;
  int weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff090E21),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text("BMI Calculator", style: myStyle(28, Colors.white, FontWeight.bold),),
              Expanded(
                flex: 10,
                  child: Container(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                isMale = true;
                              });
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              color: isMale==true? Colors.teal: cardColor,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.male, size: 90,color: Colors.white,),
                                  Text("MALE", style: myStyle(18, Colors.white70),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Expanded(
                          flex: 5,
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              color: isMale==false? Colors.teal: cardColor,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.female, size: 90, color: Colors.white,),
                                  Text("FEMALE", style: myStyle(18, Colors.white70),),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    color: cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Height", style: myStyle(25, Colors.grey),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text("${height}", style: myStyle(60, Colors.white, FontWeight.bold),),
                            Text("cm", style: myStyle(25, Colors.grey),),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15,
                            ),
                            thumbColor: Colors.teal,
                            activeTrackColor: Colors.teal,
                            inactiveTickMarkColor: Colors.grey,
                          ),
                          child: Slider(
                              min: 50,
                              max: 250,
                              value: height.toDouble(),
                              onChanged: (double value){
                                setState(() {
                                  height = value.toInt();
                                });

                              }
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          color: cardColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Weight", style: myStyle(25, Colors.grey),),
                              Text("${weight}", style: myStyle(60, Colors.white, FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      if(weight>0)
                                        {
                                          setState(() {
                                            weight--;
                                          });
                                        }
                                    },
                                    child: Icon(Icons.remove, size: 35,),
                                    backgroundColor: Colors.grey.withOpacity(0.4),
                                  ),
                                  SizedBox(width: 15,),
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: Icon(Icons.add, size: 35,),
                                    backgroundColor: Colors.grey.withOpacity(0.4),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Expanded(
                        flex: 5,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          color: cardColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Age", style: myStyle(25, Colors.grey),),
                              Text("${age}", style: myStyle(60, Colors.white, FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: (){
                                      if(age>0)
                                      {
                                        setState(() {
                                          age--;
                                        });
                                      }
                                    },
                                    child: Icon(Icons.remove, size: 35,),
                                    backgroundColor: Colors.grey.withOpacity(0.4),
                                  ),
                                  SizedBox(width: 15,),
                                  FloatingActionButton(
                                    onPressed: (){
                                        setState(() {age++;
                                        });
                                    },
                                    child: Icon(Icons.add, size: 35,),
                                    backgroundColor: Colors.grey.withOpacity(0.4),
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
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: (){
                    var heightSquare = height*height/10000;
                    var result = weight/heightSquare;

                    showDialog(context: context, builder: (context) {
                      return AlertDialog(
                        title: Text("BMI Result" , style: myStyle(30, Colors.black),),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Your BMI is: ${result.toStringAsFixed(2)}", style: myStyle(22, Colors.black),),
                            Text(result <19? "You are under weight \nSuggation: Please eat more!!" :
                            result <25? "You are perfect" :
                            "You are over weight \nSuggation: Your need exercise!!",
                              style: myStyle(22, Colors.black),
                            ),
                            

                          ],
                        ),
                      );
                    }

                    );

                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    color: Colors.teal,
                    child: Text("Calculate", style: myStyle(25, Colors.white, FontWeight.bold),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

myStyle(double fs, Color clr, [FontWeight? fw]){
  return TextStyle(fontSize: fs, color: clr, fontWeight: fw);
}

