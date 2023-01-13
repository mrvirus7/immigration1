import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF1C7587),
                  Color(0xFF65A0AD)
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("PASSPORT",style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Image.asset(
                    'assets/images/pass4.png',
                    height: 200.0,
                    width: 200.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 15,right: 5),
                  child: Text("Tanzanian Citizens who want \n a Passport  can apply by \n clicking  the link below\n ",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                SizedBox(height: 20,),
                SizedBox(height: 50,width: 250,
                  child: ElevatedButton(
                      onPressed:(){
                        Navigator.pushNamed(context, 'home');
                      },
                      child:Text('Start here',style: TextStyle(fontSize: 25,),)
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 100.0,bottom: 0),
                  child: Text("v1.0.0 ",style: TextStyle(fontSize: 15,color: Colors.white),),
                ),

              ],
            ),


          ],
        ),
      ),

    );
  }
}
