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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Session 6'),
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
   final List demo = [
     Text("Item1"),
     Text("Item2"),
     Text("Item3"),
     Text("Item4"),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context , int index){
            return Container(
              color: Colors.grey,
              padding: EdgeInsets.symmetric(horizontal: 20),
              // margin: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height,
              child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Demonstrating a Row Widget",
                        style: TextStyle(color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle
                              ),
                              child: Center(child: Text("Row1",
                                style: TextStyle(fontSize: 30, color: Colors.white),)),
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle
                              ),
                              child: Center(child: Text("Row2",
                                style: TextStyle(fontSize: 30,color: Colors.white),)),
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  shape: BoxShape.circle
                              ),
                              child: Center(child: Text("Row3",
                                style: TextStyle(fontSize: 30,color: Colors.white),)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Divider(color: Colors.white,thickness: 0.6,),
                      SizedBox(height: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Demonstrating a Column Widget",
                            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                          SizedBox(height: 20,),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.black87,
                                shape: BoxShape.circle
                            ),
                            child: Center(child: Text("Col1",
                              style: TextStyle(fontSize: 30,color: Colors.white),)),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(child: Text("Col2",
                              style: TextStyle(fontSize: 30,color: Colors.black87),)),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                shape: BoxShape.circle
                            ),
                            child: Center(child: Text("Col3",
                              style: TextStyle(fontSize: 30,color: Colors.white),)),
                          ),


                        ],),
                      Divider(color: Colors.white,thickness: 0.6,),

                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            height: 300,
                            width: 400,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                                // borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.white, width: 4.0),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage('https://images.pexels.com/photos/14672498/pexels-photo-14672498.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'))
                            ),
                            //child: Center(child: Image(image: NetworkImage("https://images.pexels.com/photos/13289360/pexels-photo-13289360.jpeg")),),
                          ),
                          Positioned(
                              right: 80,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration:  BoxDecoration(
                                    color: Colors.orangeAccent,
                                    shape: BoxShape.circle
                                ),

                              ))
                        ],)
                    ],
                  ),
                  ]),
              //
            );
          })
    );
  }
}
