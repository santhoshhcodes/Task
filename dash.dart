import 'package:flutter/material.dart';

import 'Botnav.dart';

class dash extends StatefulWidget {
  const dash({super.key});

  @override
  State<dash> createState() => _dashState();
}

class _dashState extends State<dash> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.deepPurple,

        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 60,),
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/dash.png"),
                  fit: BoxFit.fill)
                ),
              ),
              SizedBox(height: 90,),
              Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: Column(

                        children: [
                          SizedBox(height: 15,),
                          Text("Learning is Everything", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Learning with Pleasure with Dear"
                                "Programmer, Whenever you are",style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,

                            ),
                          ),
                          SizedBox(height: 10,),
                          ElevatedButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Botnavi()),
                            );


                          }, child: Text("Get Start",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 12
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)
                              )
                          ),)

                        ],
                      ),
                    ),

                  ),
          
            ],
          ),
        ),
      ),
    );
  }
}
