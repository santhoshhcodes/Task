import 'package:flutter/material.dart';

export 'package:flutter/material.dart';

class get_start extends StatefulWidget {
  const get_start({super.key});

  @override
  State<get_start> createState() => _get_startState();
}

class _get_startState extends State<get_start> {

  final valid = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: valid,
          child:
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 420,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(60)
                    )
                  ),
                 
                ),
                SizedBox(height: 10,),
                Column(
                  children: [
                    Container(
                        child: Text("Learning is Everything", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),

                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Learning with Pleasure with Dear"
                          "Programmer, Whenever you are",style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,

                      ),
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: (){}, child: Text("Get Start",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
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



              ],
            ),
          )

      ),


    );
  }
}
