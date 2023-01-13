
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import 'config/palette.dart';
class AnuwaniKazi extends StatefulWidget {
  const AnuwaniKazi({Key? key}) : super(key: key);

  @override
  State<AnuwaniKazi> createState() => _AnuwaniKaziState();
}


class _AnuwaniKaziState extends State<AnuwaniKazi> {




  final _formKey = GlobalKey<FormState>();

  TextEditingController phone = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: SingleChildScrollView(
              child: Container(
                height: 270,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/uha.jpg"),
                        fit: BoxFit.fill
                    )
                ),
                child: Container(

                  color: Color(0xFF3b5999).withOpacity(.80),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0,right: 14),
                        child: Image.asset(
                          'assets/images/umoja.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0,right: 10),
                        child: Text("e-Immigration Portal",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),

                    ],
                  ),
                ),



              ),
            ),

          ),
          Positioned(
            top: 220,

            child: Container(
              height: 410,
              width: MediaQuery.of(context).size.width-40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5
                    ),
                  ]
              ),

              child: SingleChildScrollView(
                child: Column(
                  children: [

                    Row(

                      children: [
                        Column(
                          children: [
                            TextButton(onPressed: (){
                              Navigator.pushNamed(context, 'home');
                            },
                                child: Text("Home")),
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              height: 2,
                              width: 35,
                              color: Colors.orange,
                            )
                          ],
                        ),

                        Padding(

                          padding: const EdgeInsets.only(right: 0),

                          child: Column(

                            children: [
                              TextButton(onPressed: (){
                                Navigator.pushNamed(context, 'taarifa_binafsi');
                              },
                                  child: Text("<< Taarifa Binafsi")),
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 100,
                                color: Colors.orange,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),


                   SizedBox(height: 20,),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      height: mediaQuery.size.height / 1.5,
                      child: Container(
                        padding: EdgeInsets.only(top: 10,left: 30,right: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)
                            )
                        ),
                        child: SingleChildScrollView(

                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                SizedBox(height:10),
                                Text("Mawasiliano",style: TextStyle(fontSize: 18,color:Colors.blue,fontWeight: FontWeight.bold ),),
                                Divider(color:Colors.blue,height: 5,),
                                Divider(color:Colors.blue,height: 5,),
                                SizedBox(height: 10,),

                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Sanduku La Posta"
                                  ),

                                ),
                                SizedBox(height:2),
                                TextFormField(
                                  controller: phone,
                                  decoration: InputDecoration(

                                      labelText: "Simu Ya Mkononi"
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty || !RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value!)){
                                      return "Enter correct PhoneNumber";
                                    }else{
                                      return null;
                                    }
                                  },
                                ),
                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Barua Pepe"
                                  ),

                                ),
                                SizedBox(height:10),
                                Text("Anuwani Ya Makazi",style: TextStyle(fontSize: 18,color:Colors.blue,fontWeight: FontWeight.bold ),),
                                Divider(color:Colors.blue,height: 5,),
                                Divider(color:Colors.blue,height: 5,),
                                SizedBox(height: 10,),

                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Mkoa*"
                                  ),

                                ),




                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Wilaya*"
                                  ),

                                ),

                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Mtaa/Kijiji*"
                                  ),

                                ),

                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Nyumba Namber"
                                  ),

                                ),



                                SizedBox(height: 20,),
                                Row(
                                  children: [

                                    TextButton(
                                      style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor: Colors.blue,
                                          textStyle: TextStyle(fontSize: 18)

                                      ),
                                      onPressed: (){
                                        Navigator.pushNamed(context, 'habari_wazazi');

                                      },
                                      child: Text('Hifadhi Na Endelea >>',),),
                                    SizedBox(width: 20,),


                                  ],
                                ),
                                SizedBox(height: 100,),



                              ],
                            ),
                          ),

                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),

          ),
          Positioned(

              bottom: 0,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                child: Container(
                  height: 50,

                  decoration: BoxDecoration(

                  ),
                  child: Container(

                    color: Color(0xFF3b5999).withOpacity(.80),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 1.0,right: 14),


                          child:  TextButton(onPressed: (){},
                              child: Text("passporttanzania@immagration.go.tz",style: TextStyle(color: Colors.white),)),



                        ),


                      ],
                    ),
                  ),
                ),
              ))


        ],
      ),
    );
  }
}