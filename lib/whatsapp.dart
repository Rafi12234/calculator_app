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

  Widget story(String str, String txt){
    return Column(
  children: [
  CircleAvatar(
  backgroundImage: AssetImage(str),
  radius: 36,
  ),
  Text(txt,style: TextStyle(fontSize: 13,color: Color(0xffa3a3a3)),)
  ],
  );
}
Widget name(String img,String nm, String msz){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(img),
            radius: 29,
          ),
        ),
        Container(
          width: 15,
          height: 15,
          color: Colors.black,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(nm,style: TextStyle(fontSize: 16,color: Color(0xffdcdcdc),fontWeight: FontWeight.w400),),
            Text(msz,style: TextStyle(fontSize: 14,color: Color(0xff414141),fontWeight: FontWeight.w400),)
          ],
        ),

      ],
    );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff000000),
          title: Row(
            children: [
              InkWell(
                onTap: (){

                },
                  child: Image.asset('assets/file.png',width: 30,height: 30)),
              Container(
                width: 30,
                height: 10,
                color: Color(0xff000000),
              ),
              Text('Chats',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),
              Container(
                width: 260,
                height: 10,
                color: Color(0xff000000),
              ),
              InkWell(
                  onTap: (){

                  },
                  child: Image.asset('assets/pensil.png',width: 20,height: 20))
            ],
          )
        ),
        body:
        Container(
          width: 500,
          color:Color(0xff000000),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        icon:Icon(Icons.search),
                        hintText: 'Seacrh',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                                width: 0.5
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                                width: 0.5,
                            )
                        ),
                      ),
                    )
                ),
                Container(
                  width: 260,
                  height: 10,
                  color:Color(0xff000000),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/dp.jpg'),
                              radius: 36,
                            ),
                            Text('Your note',style: TextStyle(fontSize: 13,color: Color(0xff414141)),)
                          ],
                        ),
                        Container(
                          width: 12,
                          height: 10,
                          color:Color(0xff000000),
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/bou.jpg'),
                              radius: 36,
                            ),
                            Text('Samanta',style: TextStyle(fontSize: 13,color: Color(0xffa3a3a3)),)
                          ],
                        ),
                        Container(
                          width: 12,
                          height: 10,
                          color:Color(0xff000000),
                        ),
                        story('assets/fahmida.jpeg','Fahmida'),
                        Container(
                          width: 12,
                          height: 10,
                          color:Color(0xff000000),
                        ),
                        story('assets/alt.jpg','alt'),
                        Container(
                          width: 10,
                          height: 10,
                          color:Color(0xff000000),
                        ),
                        story('assets/nihal.jpg','Nihal'),
                        Container(
                          width: 12,
                          height: 10,
                          color:Color(0xff000000),
                        ),
                        story('assets/shanti.jpg','Nusrat Jahan'),
                        Container(
                          width: 12,
                          height: 10,
                          color:Color(0xff000000),
                        ),
                        story('assets/nibir.jpeg','Adnan Mahmud'),
                        Container(
                          width: 12,
                          height: 10,
                          color:Color(0xff000000),
                        ),
                        story('assets/limon.jpg','Shahriar'),
                        Container(
                          width: 12,
                          height: 10,
                          color:Color(0xff000000),
                        ),
                        story('assets/rohan.jpeg','Shahriar Islam'),
                      ],
                    ),
                  ),
                ),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
                name('assets/bou.jpg','My Pookie🎀🎀','My Pookie🎀🎀 sent a photo. 10:25 PM'),
              ],
            ),
          ),
        )
    );
  }
}