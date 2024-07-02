import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionsNumber=0; 
 //incrementa
  List<String> questions=[
    "¿El hombre llego a la luna",
    "¿El dia miercoles hubo clases de Prog. Movil?",
    "¿Ikaro llego al Sol?",
    "¿Goku es guapo?",
    

  ];

  List <bool> answer=[
    true,
    true,
    false,
    true,
  ];

  List <Widget>scoreKeeper=[
  
          
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b2d42),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "QuizApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  questions[4],////////////////
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  bool correctAnswer= answer[questionsNumber];
                  if(correctAnswer==true){
                     scoreKeeper.add(
                  Icon(
                    Icons.check, color: Colors.deepPurple)
                    );
                  } else{
                     scoreKeeper.add(
                  Icon(
                    Icons.check, color: Colors.red)
                    );
                  }

                  questionsNumber++;
               
                  setState(() { });
                },
                child: Text("Verdadero"),
                color: Colors.greenAccent,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text("Falso"),
                color: Colors.redAccent,
              ),
            ),
          ),
       
       Row(
        children: scoreKeeper,
       ),
       
        ],
      ),
    );
  }
}