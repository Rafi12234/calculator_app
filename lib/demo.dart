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

      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}
class MyHomeState extends State<MyHomePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body:
        Center(
          child: Container(
            child: ElevatedButton(onPressed: (){
             final snackbar =SnackBar(content: Text('This is a snackbar'),duration: Duration(milliseconds: 1000),
             behavior: SnackBarBehavior.floating,
             );
             ScaffoldMessenger.of(context).showSnackBar(snackbar);
            }, child: Text('Button',style: TextStyle(fontSize: 40),)),
          ),
        )
    );
  }
}