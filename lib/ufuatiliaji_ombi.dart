import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'config/palette.dart';

class UfuatiliajiOmbi extends StatefulWidget {
  const UfuatiliajiOmbi({Key? key}) : super(key: key);

  @override
  State<UfuatiliajiOmbi> createState() => _UfuatiliajiOmbiState();
}

class _UfuatiliajiOmbiState extends State<UfuatiliajiOmbi> {
  final _formKey = GlobalKey<FormState>();
  // String name="";

  TextEditingController fname = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 250,
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
                                  Navigator.pushNamed(context, 'muongozo');
                                },
                                    child: Text("Muongozo wa ombi la Passport")),
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 195,
                                  color: Colors.orange,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1,),

                      Padding(
                        padding: const EdgeInsets.only(top: 2,left: 5,right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 5),
                              child: ExpandableText("Hali ya Ombi Langu",style: TextStyle(fontSize: 14.0,color: Colors.teal,fontWeight: FontWeight.bold),
                                collapseText: 'show less',
                                expandText: 'Show More',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ExpandableText("Kwa Mwombaji ambaye alishajaza fomu ya maombi ya pasipoti kwa njia ya kielktroniki na kufikia hatua ya kupatiwa Namba ya Ombi. Hatua hii itampa fursa ya kurekebisha taarifa zake au Kupakua na kuichapisha fomu yake. Ni hatua muhimu katika kuendeleza ombi la Mteja ambalo halikufikia hatua ya mwisho. ",style: TextStyle(fontSize: 12.0),
                                collapseText: 'show less',
                                expandText: 'Show More',
                                maxLines: 1,
                                linkColor: Colors.red,
                              ),
                            ),


                          ],
                        ),
                      ),

                      Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SizedBox(height: 1,),
                              Text("Ombilangu",style: TextStyle(fontSize: 14,color: Colors.teal,fontWeight: FontWeight.w500),),
                              SizedBox(height:5),
                              TextFormField(
                                controller: fname,
                                decoration: InputDecoration(

                                    labelText: "Number Ya Utambulisho *"
                                ),
                                validator: (value){
                                  if(value!.isEmpty || !RegExp(r'^[a-z A-Z 0-9]+$').hasMatch(value!)){
                                    return "Number ya  Utambulisho ni lazima";
                                  }else{
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(height:10),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),

                                  child: Stack(
                                    children: [
                                      IntlPhoneField(
                                        decoration: InputDecoration(
                                          labelText: 'Phone Number',
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(),
                                          ),
                                        ),
                                        initialCountryCode: 'TZ',
                                        onChanged: (phone) {
                                          print(phone.completeNumber);
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),


                              SizedBox(height: 10,),

                              Row(
                                children: [

                                  TextButton(
                                    style: TextButton.styleFrom(
                                        primary: Colors.white,
                                        backgroundColor: Colors.green,
                                        textStyle: TextStyle(fontSize: 18)

                                    ),
                                    onPressed: (){
                                      if (_formKey.currentState!.validate()) {
                                        // showDialog(
                                        //   context: context,
                                        //   builder: (BuildContext context) {
                                        //     return AlertDialog(
                                        //       title: new Text(
                                        //         'Your Data is Correctly',
                                        //       ),
                                        //       actions: <Widget>[
                                        //         TextButton(
                                        //           child: new Text("OK"),
                                        //           onPressed: () {
                                        //             Navigator.of(context).pop();
                                        //           },
                                        //         ),
                                        //       ],
                                        //     );
                                        //   },
                                        // );


                                      }

                                    },
                                    child: Text('Angalia Ombi >>',),),
                                  SizedBox(width: 10,),


                                ],
                              ),
                              SizedBox(height: 200,),





                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              )
          ),
          Positioned(

              bottom: 0,
              left: 0,
              right: 0,
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
              ))
        ],
      ),
    );
  }
}