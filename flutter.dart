import 'package:flutter/material.dart';

class flutter extends StatefulWidget {
  const flutter({super.key});

  @override
  State<flutter> createState() => _flutterState();
}

class _flutterState extends State<flutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        title: Center(child: Text("Flutter",style: TextStyle(fontWeight: FontWeight.bold),)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notification_add,color: Colors.deepPurple,),
          )
        ],

      ),
      body: Form(
          child: SingleChildScrollView(
            child: Column(
                    children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 360,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/flutter.png"),
                  fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all()
                ),
                child: Center(
                  child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/play.png"),
                      fit: BoxFit.fill),
                        shape: BoxShape.circle,
                      ),
                      ),
                ),
              ),
            
            
            ),
            SizedBox(height: 10,),
                     Column(
             children: [
               Text("Flutter Compelete Course",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
               Text("Created by dear Programmer "),
               Text("55 Videos"),
             ],
                     ),
            SizedBox(height: 15,),
            Container(
              height: 80,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
              ),
            
              child: Row(
                children: [
                  SizedBox(width: 30,),
            
                  ElevatedButton(onPressed: (){
            
            
                  }, child: Text("Video",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: EdgeInsets.symmetric(
                          horizontal: 45,
                          vertical: 18,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),),
                  SizedBox(width: 20,),
                  ElevatedButton(onPressed: (){
            
            
                  }, child: Text("Description",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: EdgeInsets.symmetric(
                        horizontal: 45,
                        vertical: 18,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text("Introduction of Flutter"),
                    subtitle: Text("20min 50sec"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text("Introduction of Flutter"),
                    subtitle: Text("20min 50sec"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text("Introduction of Flutter"),
                    subtitle: Text("20min 50sec"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.play_arrow),
                    title: Text("Introduction of Flutter"),
                    subtitle: Text("20min 50sec"),
                  ),
                ),
            
              ],
            
            )
            
            
                    ],
                  ),
          )),

    );
  }
}
