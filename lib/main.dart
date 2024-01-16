import 'package:flutter/material.dart';
import 'package:flutter_app/presentations/screens/counters/counter_funtions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      //  colorScheme: ColorScheme.fromSeed(seedColor:   Color.fromARGB(255, 0, 34, 1)),
        useMaterial3: true,
        colorSchemeSeed: Colors.red
      ),
      home: const CounterFuntionsScreen() //const MyHomePage(title: 'Pagina principal'),
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
      
        child: Column(
           
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'persione el boton muchas veces:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/