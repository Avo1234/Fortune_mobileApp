import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 183, 143, 58)),
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key});

 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _currentFortune = "Click the button to get your fortune!";

//List Containing Fortunes
  final _fortuneList = [
    "You will have a great day!",
    "Good news is coming your way.",
    "You will meet someone special soon.",
    "Your hard work will pay off.",
    "A pleasant surprise is in store for you.",
    "You will achieve your goals.",
    "Happiness is around the corner.",
    "You will find success in your endeavors.",
    "Your positive attitude will attract good things.",
  ];


/*
 This function generates a random fortuneIndex 
from the list and updates the state to display it.
*/
  void _randomFortune(){
    
    var random = Random();
    int fortuneIndex = random.nextInt(_fortuneList.length);
    
    setState(() { 
    _currentFortune = _fortuneList[fortuneIndex];
     });

  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      // AppBar with a title and background color from the theme
       appBar: AppBar(
        
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text("Flutter Demo Home Page"),

       ),
      body:Center(
          child: Column(
            
            mainAxisAlignment: .center,
            children: [
              const Text('YOur fortune is:'),
              Card(
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                  '${_currentFortune}',
                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                ),
              ),
              ElevatedButton(
                onPressed: _randomFortune, 
                child: const Text('Get Fortune'),
              )
            
            ],
          ),
      ),
       
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _randomFortune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
