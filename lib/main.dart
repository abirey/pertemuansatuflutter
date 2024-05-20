// import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterGenap = 0;
  int _counterGanjil = 1;
  int _counterPrima = 2;
  List<String> _counterNrp = ['3','1','2','2','5','0','0','0','1','2'];
  int _counterIndex = 0;

  void _incrementCounter() {
    setState(() {
      
      
      if (_counterGenap > 50) {
      _counterGenap = 0;
      _counterGanjil = 1;
      _counterPrima = 0;
       } else {
      _counterGenap += 2;
      _counterGanjil += 2;
      _counterPrima += 1;
      while ((_counterPrima <= 10) && ((_counterPrima % 2 == 0) || (_counterPrima % 9 == 0)) ){
         _counterPrima += 1;
      }
       while ( (_counterPrima > 10) && (( _counterPrima % 2 == 0 ) || (_counterPrima % 3 == 0 )  || (_counterPrima % 5 == 0 ) || (_counterPrima % 7 == 0 ))) {
        _counterPrima += 1;
       }
        if (_counterIndex < 9 ) {
        _counterIndex += 1;
        _counterNrp[_counterIndex];}
        else{
          _counterIndex = 0;
        }
    }});
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text('Bismillah'),
      ),
      body: Center(
       
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ini angka genap',
            ),
            Text(
              '$_counterGenap',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'ini angka ganjil',
            ),
            
            Text(
              '$_counterGanjil',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'ini angka prima',
            ),
            
            Text(
              '$_counterPrima',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
             const Text(
              'ini nrp ku',
            ),
            
            Text(
              '${_counterNrp[_counterIndex]}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.signal_wifi_statusbar_connected_no_internet_4_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
