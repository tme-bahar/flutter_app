import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
class Counter extends StatefulWidget {
  _CounterState createState() => _CounterState();
}
int questionCircleRed = 0;
int questionCircleGreen = 0;
int questionCircleBlue = 0;
class _CounterState extends State<Counter> with TickerProviderStateMixin{
  int questionCircleRed = 0;
  int questionCircleGreen = 0;
  int questionCircleBlue = 0;
  int questionRed = 0;
  int questionGreen = 0;
  int questionBlue = 0;
  int answerCircleRed = 0;
  int answerCircleGreen = 0;
  int answerCircleBlue = 0;
  int answerRed = 50;
  int answerGreen = 50;
  int answerBlue = 50;
  int redDifference = 0;
  int greenDifference = 0;
  int blueDifference = 0;
  int redResonance = 0 ;
  int greenResonance = 0;
  int blueResonance = 0;
  int sumotionOfResonance = 0;
  int point = 0;
  int result = 0;
  bool background_light;
  bool percent;
  bool point_score;
  bool Done = false;
  Color DoneButton;
  String va = '0';
  String startText;
  bool DoneShow;
  double pickerWidth = 350.0;
  Alignment qc ;
  AnimationController zero_controller;
  AnimationController first_controller;
  AnimationController second_controller;
  AnimationController third_controller;
  AnimationController forth_controller;
  AnimationController fivth_controller;
  AnimationController sixth_controller;
  AnimationController seventh_controller;
  AnimationController eaith_controller;
  Animation<double> zero_scale;
  Animation<double> first_rotate;
  Animation<double> second_scale;
  Animation<double> third_scale;
  Animation<double> forth_fade;
  Animation<double> fivth_scale;
  Animation<double> sixth_scale;
  Animation<double> seventh_scale;
  Animation<double> eaith_fade;
  Animation<double> ninth_fade;
  Animation<double> tenth_fade;
  Animation<double> eleventh_fade;
  Animation<double> towelvth_fade;
  Animation<double> therteenth_scale;
  void initState() {
    super.initState();
    zero_controller = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
    first_controller = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
    second_controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    third_controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    forth_controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    fivth_controller = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
    sixth_controller = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
    seventh_controller = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
    eaith_controller = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
    zero_scale = CurvedAnimation(
      parent: zero_controller,
      curve: Curves.linear,
      ).drive(Tween(begin: 0, end: 1));
    first_rotate = CurvedAnimation(
      parent: first_controller,
      curve: Curves.linear,
    ).drive(Tween(begin: 1, end: 0));
    second_scale =CurvedAnimation(
      parent: second_controller,
      curve: Curves.linear,
    ).drive(Tween(begin: 1, end: 0.2));
    third_scale =CurvedAnimation(
      parent: second_controller,
      curve: Curves.linear,
    ).drive(Tween(begin: 0, end: 0.9));
    forth_fade =CurvedAnimation(
      parent: second_controller,
      curve: Curves.linear,
    ).drive(Tween(begin: 1, end: 0));
    fivth_scale =CurvedAnimation(
      parent: second_controller,
      curve: Curves.linear,
    ).drive(Tween(begin: 0, end: 1));
    sixth_scale =CurvedAnimation(
      parent: third_controller,
      curve: Curves.linear,
    ).drive(Tween(begin: 0, end: 1));
    seventh_scale =CurvedAnimation(
      parent: forth_controller,
      curve: Curves.linear,
    ).drive(Tween(begin: 1, end: 0.4));
    eaith_fade =CurvedAnimation(
      parent: forth_controller,
      curve: Curves.linear,
    ).drive(Tween(begin: 1, end: 0))..addStatusListener((AnimationStatus status) {
      if(status == AnimationStatus.completed)
      new Stream.periodic(const Duration(milliseconds: 500), (_) =>{fivth_controller..reset()..forward()})
          .first.then((_)=>{new Stream.periodic(const Duration(milliseconds: 500), (_) =>{sixth_controller..reset()..forward()})
          .first.then((_)=>{})
          }) ;
       // fivth_controller..reset()..forward();
    });
    ninth_fade =CurvedAnimation(
      parent: fivth_controller,
      curve: Curves.linear,
    ).drive(Tween(begin: 0, end: 1));
    tenth_fade =CurvedAnimation(
      parent: sixth_controller,
      curve: Curves.linear,
    ).drive(Tween(begin: 0, end: 1))..addStatusListener((AnimationStatus status) {
      if(status == AnimationStatus.completed)
        new Stream.periodic(const Duration(milliseconds: 500), (_) =>{seventh_controller..reset()..forward()})
            .first.then((_)=>{
        }) ;
      // fivth_controller..reset()..forward();
    });
    eleventh_fade =CurvedAnimation(
      parent: seventh_controller,
      curve: Curves.linear,
    ).drive(Tween(begin: 0, end: 1))..addStatusListener((AnimationStatus status) {
      if(status == AnimationStatus.completed)
        new Stream.periodic(const Duration(milliseconds: 500), (_) =>{eaith_controller..reset()..forward()})
            .first.then((_)=>{
        }) ;
      // fivth_controller..reset()..forward();
    });;
    towelvth_fade =CurvedAnimation(
      parent: eaith_controller,
      curve: Curves.linear,
    ).drive(Tween(begin: 0, end: 1));
    therteenth_scale =CurvedAnimation(
      parent: sixth_controller,
      curve: Curves.linear,
    ).drive(Tween(begin: 0.9, end: 1.2));
    questionCircleRed = 0;
    questionCircleGreen = 0;
    questionCircleBlue = 0;
    questionRed = 0;
    questionGreen = 0;
    questionBlue = 0;
    answerCircleRed = 0;
    answerCircleGreen = 0;
    answerCircleBlue = 0;
    answerRed = 50;
    answerGreen = 50;
    answerBlue = 50;
    redDifference = 0;
    greenDifference = 0;
    blueDifference = 0;
    redResonance = 0 ;
    greenResonance = 0;
    blueResonance = 0;
    sumotionOfResonance = 0;
    point = 0;
    result = 0;
    Done = false;
    DoneButton = Colors.blueAccent;
    startText = 'START';
    DoneShow =false;
    qc= Alignment.center;
    zero_controller..reset()..forward();
    start();
  }
 void DN(){
      done();
 }
  void changeRed(num i) {
    setState(() {
      if(!DoneShow){
        third_controller..reset()..forward();
        DoneShow = true;
      }
      answerRed = (i);
    });
  }
  void changeGreen(num i) {
    setState(() {
      if(!DoneShow){
        third_controller..reset()..forward();
        DoneShow = true;
      }
      answerGreen = (i);
    });
  }
  void changeBlue(num i) {
    setState(() {
      if(!DoneShow){
        third_controller..reset()..forward();
        DoneShow = true;
      }
      answerBlue = (i);
    });
  }
  void start(){
    var rand = new Random();
    setState(() {

    int i = rand.nextInt(100);
    i = i >= 0 ? i:-i;
    questionCircleRed = i % 100;
    i = rand.nextInt(1000);
    i = i >= 0 ? i:-i;
    questionCircleGreen = i % 100;
    i = rand.nextInt(10000);
    i = i >= 0 ? i:-i;
    questionCircleBlue = i % 100;
    //zero
    questionRed = 0;
    questionGreen = 0;
    questionBlue = 0;
    redDifference = 0;
    greenDifference = 0;
    blueDifference = 0;
    redResonance = 0;
    greenResonance = 0;
    blueResonance = 0;
    result = 0;
    sumotionOfResonance = 0;
    point = 0;
    DoneButton = Colors.blueAccent;
    Done = false;
    });
  }
  void done(){
    questionRed = questionCircleRed;
    questionGreen = questionCircleGreen;
    questionBlue = questionCircleBlue;
    answerCircleRed = answerRed;
    answerCircleGreen = answerGreen;
    answerCircleBlue = answerBlue;
    //mistakes
    redDifference = questionCircleRed - answerRed;
    redDifference = redDifference <= 0 ? -redDifference : redDifference;
    greenDifference = questionCircleGreen - answerGreen;
    greenDifference = greenDifference <= 0 ? -greenDifference : greenDifference;
    blueDifference = questionCircleBlue - answerBlue;
    blueDifference = blueDifference <= 0 ? -blueDifference : blueDifference;
    result = redDifference + greenDifference +blueDifference ;
    //resonance
    redResonance = questionCircleRed < 50 ? 100-questionCircleRed : questionCircleRed;
    greenResonance = questionCircleGreen < 50 ? 100-questionCircleGreen : questionCircleGreen;
    blueResonance = questionCircleBlue < 50 ? 100-questionCircleBlue : questionCircleBlue;
    sumotionOfResonance = redResonance + greenResonance + blueResonance;
    //point
    point = sumotionOfResonance - result;
    //act
    changeBlue(answerBlue);
  }

  @override
  void dispose() {
    first_controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(title:Text('Color Blindness'),
      actions: <Widget>[
        IconButton(icon:Icon( Icons.settings,color: Colors.white,)
        ,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => My()),
          );

        },)
        ],),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      SizedBox(
                          width: 300.0,
                          height: 300.0,
                          child:Stack(children:
                            <Widget>[
                              Align(alignment: Alignment.topRight,
                                  child:
                                  SizedBox(height: 300,width: 300,
                                      child:
                                      ScaleTransition(alignment: Alignment.topRight, scale: therteenth_scale,
                                          child:
                                          ScaleTransition(alignment: Alignment.topRight,
                                            scale: third_scale,
                                            child:
                                            Container(
                                                decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                  color: Color.fromARGB(250,
                                                      (answerRed*2.55).toInt(), (answerGreen*2.55).toInt(), (answerBlue*2.55).toInt()),
                                                ),
                                                )
                                            ,
                                          ))
                                  )
                              ),

                              RotationTransition(
                                  turns: first_rotate,
                                  child:

                                      ScaleTransition(
                                          scale: zero_scale,
                                      child:

                                              ScaleTransition(
                                                  alignment: Alignment.bottomLeft,
                                                  scale: second_scale,
                                                  child:

                                                            Align(child:
                                                              SizedBox(
                                                                  width: 300.0,
                                                                  height: 300.0,
                                                                  child:
                                                                  FloatingActionButton(child:
                                                                    Padding(padding:EdgeInsets.only(bottom: 40)
                                                                        ,child:FadeTransition(opacity: forth_fade,
                                                                            child:
                                                                            Text('↺',style: TextStyle(fontSize: 150),)
                                                                        )
                                                                    )
                                                                      ,heroTag: "btn1"
                                                                      ,backgroundColor: Color.fromARGB(255, (questionCircleRed*2.55).toInt(),
                                                                          (questionCircleGreen*2.55).toInt(), (questionCircleBlue*2.55).toInt()),
                                                                      onPressed: () { if(!Done){
                                                                      first_controller..reset()..forward();
                                                                      start();}}
                                                                      )
                                                              )
                                                            )
                                                        ,)

                                      ),
                              )
                            ],
                          )

                      )
                    ]
                )
              ],
            )
            ,
            Padding(
                padding: new EdgeInsets.only(top:50,bottom: 30)
                ,child:
              SizedBox(
                  width: 350.0,
                  height: 150.0,
                  child:
                  Stack(
                      children: <Widget>[
                        FadeTransition(opacity: ninth_fade,
                        child: 
                            Align(alignment: Alignment.topLeft,
                              child:
                                SizedBox(
                                  width: 150.0,
                                  height: 40.0,
                                  child:
    
                                  Stack(
                                    children: <Widget>[
    
                                      Align(alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                            width: 45.0,
                                            height: 50.0,
                                            child:Container(child:
                                              Align(alignment: Alignment.center,child:
                                                Text('$answerCircleRed',style: TextStyle(color: Colors.white),))
                                              ,color: Color.fromARGB(255, 255, 0, 0),),)
                                      ),
                                      Align(alignment: Alignment.center,
                                          child: SizedBox(
                                            width: 45.0,
                                            height: 50.0,
                                            child:Container(child:
                                              Align(alignment: Alignment.center,child:
                                                Text('$answerCircleGreen',style: TextStyle(color: Colors.white),)),
                                              color: Color.fromARGB(255, 0, 100, 0),
                                            ),
                                          )
                                      ),
                                      Align(alignment: Alignment.centerRight,
                                          child: SizedBox(
                                            width: 45.0,
                                            height: 50.0,
                                            child:Container(child:
                                              Align(alignment: Alignment.center,child:
                                                Text('$answerCircleBlue',style: TextStyle(color: Colors.white),)),
                                              color: Color.fromARGB(255, 0, 0, 255),),
                                          )
                                      ),
    
                                    ],
                                  ),
                                ),
                            ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 0),
                        child: 
                            FadeTransition(opacity: tenth_fade,
                              child:
                              Align(alignment: Alignment.centerLeft,
                                child:
                                SizedBox(
                                  width: 150.0,
                                  height: 40.0,
                                  child:
    
                                  Stack(
                                    children: <Widget>[
    
                                      Align(alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                            width: 45.0,
                                            height: 50.0,
                                            child:Container(child:
                                              Align(alignment: Alignment.center,child:
                                                Text('$questionCircleRed',style: TextStyle(color: Colors.white),))
                                                  ,color: Color.fromARGB(255, 255, 0, 0),),)
                                      ),
                                      Align(alignment: Alignment.center,
                                          child: SizedBox(
                                            width: 45.0,
                                            height: 50.0,
                                            child:Container(child:
                                            Align(alignment: Alignment.center,child:
                                            Text('$questionCircleGreen',style: TextStyle(color: Colors.white),)),
                                              color: Color.fromARGB(255, 0, 100, 0),
                                            ),
                                          )
                                      ),
                                      Align(alignment: Alignment.centerRight,
                                          child: SizedBox(
                                            width: 45.0,
                                            height: 50.0,
                                            child:Container(child:
                                            Align(alignment: Alignment.center,child:
                                            Text('$questionCircleBlue',style: TextStyle(color: Colors.white),)),
                                              color: Color.fromARGB(255, 0, 0, 255),),
                                          )
                                      ),
    
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 0),
                          child:
                          FadeTransition(opacity: eleventh_fade,
                            child:
                            Align(alignment: Alignment.bottomLeft,
                              child:
                              SizedBox(
                                width: 150.0,
                                height: 40.0,
                                child:

                                Stack(
                                  children: <Widget>[

                                    Align(alignment: Alignment.centerLeft,
                                        child: SizedBox(
                                          width: 45.0,
                                          height: 50.0,
                                          child:Container(child:
                                          Align(alignment: Alignment.center,child:
                                          Text('$redDifference',style: TextStyle(color: Color.fromARGB(255, 255, 0, 0) ),))
                                            ,color:Colors.white,),)
                                    ),
                                    Align(alignment: Alignment.center,
                                        child: SizedBox(
                                          width: 45.0,
                                          height: 50.0,
                                          child:Container(child:
                                          Align(alignment: Alignment.center,child:
                                          Text('$greenDifference',style: TextStyle(color:Color.fromARGB(255, 0, 100, 0)),)),
                                            color: Colors.white ,
                                          ),
                                        )
                                    ),
                                    Align(alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          width: 45.0,
                                          height: 50.0,
                                          child:Container(child:
                                          Align(alignment: Alignment.center,child:
                                          Text('$blueDifference',style: TextStyle(color:Color.fromARGB(255, 0, 0, 255)),)),
                                            color: Colors.white ,),
                                        )
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                              Align(alignment: Alignment.centerRight,
                                child:
                                  AnimatedContainer(
                                    alignment: Alignment.centerLeft,
                                    width:pickerWidth ,
                                    duration: Duration(milliseconds: 500),
                                    child:
                                      ScaleTransition(alignment:Alignment.topCenter, scale: fivth_scale,
                                        child:
                                          Stack(children: <Widget>[
                                              Align(alignment: Alignment.centerLeft,
                                                  child:
                                                    Padding(padding: EdgeInsets.only(left: 30),
                                                    child:
                                                      SizedBox(
                                                          width: 45.0,
                                                          height: 200.0,
                                                          child:
                                                          Container(child:
                                                            NumberPicker.integer(initialValue: answerRed, minValue: 0, maxValue: 100, onChanged: changeRed),
                                                              color: Color.fromARGB(255, 255, 0, 0),
                                                          )
                                                      )
                                                    )
                                              ),
                                              Align(alignment: Alignment.center,
                                                  child:SizedBox(
                                                      width: 45.0,
                                                      height: 200.0,
                                                      child:
                                                      Container(child:
                                                      NumberPicker.integer(initialValue: answerGreen, minValue: 0, maxValue: 100, onChanged: changeGreen
                                                        ,),
                                                        color: Color.fromARGB(255, 0, 200, 0),)
                                                  )
                                              )
                                              ,Align(alignment: Alignment.centerRight,

                                                  child:
                                                  Padding(padding: EdgeInsets.only(right: 30),child:
                                                    SizedBox(
                                                        width: 45.0,
                                                        height: 200.0,
                                                        child:
                                                        Container(child:
                                                        NumberPicker.integer(initialValue: answerBlue, minValue: 0, maxValue: 100, onChanged: changeBlue),
                                                          color: Color.fromARGB(255, 0, 0, 255),)
                                                    )
                                                  )
                                              ),
                                            ],
                                          )
                                      ),
                                  ),
                              ),

                        Padding(padding: new EdgeInsets.only(top:40),child:
                          SizedBox(
                            width: 350.0,
                            height: 70.0,
                            child:ScaleTransition(alignment: Alignment.bottomCenter,
                            scale: forth_fade,
                            child:
                              MaterialButton(color: Colors.lightGreen
                                ,child:Text('start',style: TextStyle(color: Colors.white,fontSize: 30),),
                                onPressed: (){setState(() {
                                  Done = !Done;
                                  second_controller..reset()..forward();
                                });},
                              )
                            ),
                          )
                        )

                    ],
                  )
              )
            ),

                  Stack(children: <Widget>[
                      Align(alignment: Alignment.center, child:
                        ScaleTransition(scale: sixth_scale,
                          child:FadeTransition(opacity: eaith_fade,
                          child:
                              SizedBox(height: 100,width: 100,
                                  child:
                                  FloatingActionButton(onPressed: () {
                                    setState(() {
                                      DN();
                                    pickerWidth =200;
                                    forth_controller..reset()..forward();
                                    });
                                    },
                                    child: Text('✓',style: TextStyle(fontSize: 50),),)
                              ),
                          )
                        )
                      ),
                      FadeTransition(opacity: towelvth_fade,
                      child:
                        Align(alignment: Alignment.centerRight,
                          child:
                              Padding(padding: EdgeInsets.only(right: 80),
                              child: 
                                SizedBox(height: 100,width: 100,
                                    child:
                                    FloatingActionButton(onPressed: () {
                                      setState(() {
                                        Phoenix.rebirth(context);
                                      });
                                    },
                                      child: Text('↺',style: TextStyle(fontSize: 50),),)
                                ),
                              )
                        )
                      ),
                      FadeTransition(opacity: towelvth_fade,
                          child:
                          Align(alignment: Alignment.bottomLeft,
                              child:
                              Padding(padding: EdgeInsets.only(left: 80,top: 20),
                                child:
                                Text('$result',style: TextStyle(fontSize: 50),)

                              )
                          )
                      )
                    ],

            )
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Container(
          child: Counter(),
        ),
      ),
    );
  }
}

Future<void> main() async {
  runApp(Phoenix(child:
      MyApp()));
}
class My extends StatefulWidget {
  @override
  SecondRoute createState() => SecondRoute();
}
class SecondRoute extends State<My> {
  bool back = true;
  bool show = true;
  bool per = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Padding(padding: new EdgeInsets.only(top:50,left:20),child:
              Align(alignment: Alignment.topCenter,child:
                Column(
                  children: <Widget>[
                    Stack(children: <Widget>[
                        Align(alignment: Alignment.centerLeft,child:Text('Background lite',style: TextStyle(fontSize: 30,color: Colors.white),))
                        ,Align(alignment: Alignment.centerRight
                          ,child: Switch(
                            onChanged: (value){
                              setState(() {
                                back=value;
                              });
                            },
                            value: back,
                            activeTrackColor: Color.fromARGB(255, 90, 0, 150),
                            activeColor: Colors.deepPurpleAccent,
                          ),
                        )
                      ],
                    ),
                    Stack(children: <Widget>[
                      Align(alignment: Alignment.centerLeft,child:Text('Help circle show',style: TextStyle(fontSize: 30,color: Colors.white),))
                      ,Align(alignment: Alignment.centerRight
                        ,child: Switch(
                          onChanged: (value){
                            setState(() {
                              show=value;
                            });
                          },
                          value: show,
                          activeTrackColor: Color.fromARGB(255, 90, 0, 150),
                          activeColor: Colors.deepPurpleAccent,
                        ),
                      )
                    ],
                    ),
                    Stack(children: <Widget>[
                      Align(alignment: Alignment.centerLeft,child:Text('Percent color',style: TextStyle(fontSize: 30,color: Colors.white),))
                      ,Align(alignment: Alignment.centerRight
                        ,child: Switch(
                          onChanged: (value){
                            setState(() {
                              per=value;
                            });
                          },
                          value: per,
                          activeTrackColor: Color.fromARGB(255, 90, 0, 150),
                          activeColor: Colors.deepPurpleAccent,
                        ),
                      )
                    ],
                    )
                  ],
                )
              )
            )
          ],
        )
      ),
      backgroundColor: Colors.blue,
    );
  }
}
