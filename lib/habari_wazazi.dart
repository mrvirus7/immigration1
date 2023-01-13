import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import 'config/palette.dart';

class HabariWazazi extends StatefulWidget {
  const HabariWazazi({Key? key}) : super(key: key);

  @override
  State<HabariWazazi> createState() => _HabariWazaziState();
}

class _HabariWazaziState extends State<HabariWazazi> {
  // TextEditingController dateCtl = TextEditingController();
  // String dropdownvalue = 'Sina Ndoa';
  // var items =  ['Sina Ndoa','Nna Ndoa','Mtalaka','Mfiwa'];

  // String dropdownvalues = 'Mume';
  // var jinsia =  ['Mume','Mke'];

  // String dropdown = 'Tanzania Bara';
  // var nchi =  ['Tanzania Bara','Zanzibar'];



  final _formKey = GlobalKey<FormState>();
  // String name="";

  TextEditingController fname = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  late String valueChoose;
  List listIterm=[
    "iterm1", "iterm 2", "iterm 3", "iterm 4"
  ];
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
                                Navigator.pushNamed(context, 'anuwani_yakazi');
                              },
                                  child: Text("<< Anuwani Ya Makazi")),
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
                                Text("Habari Za Baba",style: TextStyle(fontSize: 18,color:Colors.blue,fontWeight: FontWeight.bold ),),
                                Divider(color:Colors.blue,height: 5,),
                                Divider(color:Colors.blue,height: 5,),
                                SizedBox(height: 10,),

                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Jina Kamili*"
                                  ),

                                ),
                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Tarehe Ya Kuzaliwa"
                                  ),

                                ),
                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Nchi*"
                                  ),

                                ),
                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Eneo*"
                                  ),

                                ),
                                SizedBox(height:2),
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

                                      labelText: "Kata/Shehia*"
                                  ),

                                ),
                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Mtaa/Kijiji*"
                                  ),

                                ),
                                SizedBox(height:10),
                                Text("Habari Za Mama",style: TextStyle(fontSize: 18,color:Colors.blue,fontWeight: FontWeight.bold ),),
                                Divider(color:Colors.blue,height: 5,),
                                Divider(color:Colors.blue,height: 5,),
                                SizedBox(height: 10,),

                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Jina Kamili*"
                                  ),

                                ),
                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Tarehe Ya Kuzaliwa"
                                  ),

                                ),
                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Nchi*"
                                  ),

                                ),
                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Eneo*"
                                  ),

                                ),
                                SizedBox(height:2),
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

                                      labelText: "Kata/Shehia*"
                                  ),

                                ),
                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Mtaa/Kijiji*"
                                  ),

                                ),
                                Row(
                                  children: [

                                    TextButton(
                                      style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor: Colors.blue,
                                          textStyle: TextStyle(fontSize: 18)

                                      ),
                                      onPressed: (){
                                        Navigator.pushNamed(context, 'habari_zasafari');

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
