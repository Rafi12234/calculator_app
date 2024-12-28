import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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

      home: const MyHomePage(title: 'Calculator'),
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
  String a='0';
  String res = '0';
  String exp = '';

click(String txt){
  setState(() {
    if(txt == 'C'){
      a=a.substring(0,a.length-1);
      if(a.length==0){
        a='0';
      }
    }else if(txt =='='){
      try{
        exp = a;
        Parser p = Parser();
        Expression ex = p.parse(exp);
        ContextModel cm = ContextModel();
        res='${ex.evaluate(EvaluationType.REAL, cm)}';
      }
      catch(e){
        'Error';
      }
    }else if(txt == 'AC') {
      a='0';
      res='0';
    }
    else {
      if(a=='0'){
        a=txt;
      }else{
      a=a+txt;
      }
    }
   }
  );
}
Widget Button(String txt, Color color){

  return InkWell(
    onTap: (){
    click(txt);
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [BoxShadow(
            blurRadius: 5,
            offset: Offset(6,6),
          )
          ],
          color: color,
        ),
        child: Center(child: Text(txt,style: TextStyle(fontSize: 40,color: Colors.white),)),
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1d1f20),
          title: Center(child: Text('CALCULATOR',style: TextStyle(color: Colors.white,fontSize: 30),)),
        ),
        body:
           Container(
             color: Colors.black,
             child:Column(
               children: [
                 Container(
                   height: 25,
                   width: 25,
                   color: Colors.black,
                 ),
                 Padding(
                   padding: const EdgeInsets.all(11.0),
                   child: Container(
                     alignment: Alignment.centerRight,
                     height: 100,
                     width: 450,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30),
                       color: Colors.white10,
                     ),
                     child: Text(a,style: TextStyle(fontSize: 40,color: Colors.white),),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(11.0),
                   child: Container(
                     alignment: Alignment.centerRight,
                     height: 100,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30),
                       color: Colors.white10,
                     ),
                     child: Text(res,style: TextStyle(fontSize: 40,color: Colors.white),),
                   ),
                 ),
                 Container(
                   height: 75,
                   width: 75,
                   color: Colors.black,
                 ),
                 Column(
                   children: [
                   Container(
                   height: 520,
                   width: 448,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white10,
                   ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Button('C', Colors.indigo),
                            Button('7', Color(0xff212327)),
                            Button('4', Color(0xff212327)),
                            Button('1', Color(0xff212327)),
                            Button('%', Color(0xff212327)),
                          ],
                        ),
                        Column(
                          children: [
                            Button('/', Colors.indigo),
                            Button('8', Color(0xff212327)),
                            Button('5', Color(0xff212327)),
                            Button('2', Color(0xff212327)),
                            Button('0', Color(0xff212327)),
                          ],
                        ),
                        Column(
                          children: [
                            Button('*', Colors.indigo),
                            Button('9', Color(0xff212327)),
                            Button('6', Color(0xff212327)),
                            Button('3', Color(0xff212327)),
                            Button('.', Color(0xff212327)),
                          ],
                        ),
                        Column(
                          children: [
                            Button('AC', Colors.indigo),
                            Button('+', Colors.indigo),
                            Button('-', Colors.indigo),
                            Container(
                              height: 200,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                                child: Button('=', Colors.indigo)),
                          ],
                        ),
                      ], 
                     )
                 ),
                   ],
                 )
               ],
             ),
           ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
