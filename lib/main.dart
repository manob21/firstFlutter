import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('One', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Three', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Four', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Five', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
              ),
            ],
          ),
        )
    );
  }
}
