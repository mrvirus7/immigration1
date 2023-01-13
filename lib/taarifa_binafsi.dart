import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import 'config/palette.dart';

class TaarifaBinafsi extends StatefulWidget {
  const TaarifaBinafsi({Key? key}) : super(key: key);

  @override
  State<TaarifaBinafsi> createState() => _TaarifaBinafsiState();
}

class _TaarifaBinafsiState extends State<TaarifaBinafsi> {
  TextEditingController dateCtl = TextEditingController();
  String dropdownvalue = 'Sina Ndoa';
  var items =  ['Sina Ndoa','Nna Ndoa','Mtalaka','Mfiwa'];

  String dropdownvalues = 'Mume';
  var jinsia =  ['Mume','Mke'];

  String dropdown = 'Tanzania Bara';
  var nchi =  ['Tanzania Bara','Zanzibar'];



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


                      ],
                    ),



                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      height: mediaQuery.size.height / 1.5,
                      child: Container(
                        padding: EdgeInsets.all(30.0),
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

                                SizedBox(height: 1,),
                                Text("Taarifa Binafsi",style: TextStyle(fontSize: 20,color: Colors.teal,fontWeight: FontWeight.w500),),

                                SizedBox(height:2),
                                TextFormField(
                                  controller: phone,
                                  decoration: InputDecoration(

                                      labelText: "Andika Jinalako kwa Ukamilifu"
                                  ),
                                  // validator: (value){
                                  //   if(value!.isEmpty || !RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value!)){
                                  //     return "Enter correct FullName";
                                  //   }else{
                                  //     return null;
                                  //   }
                                  // },
                                ),
                                SizedBox(height: 10,),

                                Container(
                                  height: 80,
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 210),
                                        child: Text("Jinsi*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                      ),

                                      DropdownButton(


                                        value: dropdownvalues,

                                        icon: Icon(
                                          Icons.keyboard_arrow_down,

                                        ),

                                        iconSize: 24,
                                        elevation: 16,
                                        isExpanded: true,
                                        items:jinsia.map((String jinsia) {
                                          return DropdownMenuItem(

                                              value: jinsia,
                                              child: Text(jinsia)
                                          );

                                        }

                                        ).toList(),
                                        onChanged: (String? newValue){
                                          setState(() {
                                            dropdownvalues = newValue!;
                                          });
                                        },

                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height:2),
                                Container(
                                  height: 80,
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 150),
                                        child: Text("Habari Za Ndoa",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                      ),

                                      DropdownButton(


                                        value: dropdownvalue,

                                        icon: Icon(
                                          Icons.keyboard_arrow_down,

                                        ),

                                        iconSize: 24,
                                        elevation: 16,
                                        isExpanded: true,
                                        items:items.map((String items) {
                                          return DropdownMenuItem(

                                              value: items,
                                              child: Text(items)
                                          );

                                        }

                                        ).toList(),
                                        onChanged: (String? newValue){
                                          setState(() {
                                            dropdownvalue = newValue!;
                                          });
                                        },

                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Habari Za kazi"
                                  ),
                                  // validator: (value){
                                  //   if(value!.isEmpty || !RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value!)){
                                  //     return "Enter correct PhoneNumber";
                                  //   }else{
                                  //     return null;
                                  //   }
                                  // },
                                ),
                                SizedBox(height: 10,),

                                Text("Utambulisho",style: TextStyle(fontSize: 18,color:Colors.blue,fontWeight: FontWeight.bold ),),
                                Divider(color:Colors.blue,height: 5,),
                                Divider(color:Colors.blue,height: 5,),

                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Namba Ya Uraia"
                                  ),
                                  // validator: (value){
                                  //   if(value!.isEmpty || !RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value!)){
                                  //     return "Enter correct PhoneNumber";
                                  //   }else{
                                  //     return null;
                                  //   }
                                  // },
                                ),
                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Kitambulisho cha Mzanzibari Mkaazi"
                                  ),

                                ),
                                SizedBox(height:2),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Picha Ya Muombaji"
                                  ),
                                  // validator: (value){
                                  //   if(value!.isEmpty || !RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value!)){
                                  //     return "Enter correct PhoneNumber";
                                  //   }else{
                                  //     return null;
                                  //   }
                                  // },
                                ),
                                SizedBox(height:10),
                                Text("Tarehe Na Mahali Pa Kuzaliwa",style: TextStyle(fontSize: 18,color:Colors.blue,fontWeight: FontWeight.bold ),),
                                Divider(color:Colors.blue,height: 5,),
                                Divider(color:Colors.blue,height: 5,),
                                SizedBox(height: 2,),
                                TextFormField(
                                  controller: dateCtl,
                                  decoration: InputDecoration(
                                    labelText: "Date of birth",
                                    hintText: "Ex. Insert your dob",),
                                  onTap: () async{
                                    DateTime? date = DateTime(1900);
                                    FocusScope.of(context).requestFocus(new FocusNode());

                                    date = await showDatePicker(
                                        context: context,
                                        initialDate:DateTime.now(),
                                        firstDate:DateTime(1900),
                                        lastDate: DateTime(2100));

                                    dateCtl.text = date.toString();},),
                                SizedBox(height: 2,),
                                TextFormField(

                                  decoration: InputDecoration(

                                      labelText: "Nchi*"
                                  ),
                                  // validator: (value){
                                  //   if(value!.isEmpty || !RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value!)){
                                  //     return "Enter correct PhoneNumber";
                                  //   }else{
                                  //     return null;
                                  //   }
                                  // },
                                ),
                                SizedBox(height:2),
                                Container(
                                  height: 80,
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 160),
                                        child: Text("Chagua Eneo*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                      ),

                                      DropdownButton(


                                        value: dropdown,

                                        icon: Icon(
                                          Icons.keyboard_arrow_down,

                                        ),

                                        iconSize: 24,
                                        elevation: 16,
                                        isExpanded: true,
                                        items:nchi.map((String nchi) {
                                          return DropdownMenuItem(

                                              value: nchi,
                                              child: Text(nchi)
                                          );

                                        }

                                        ).toList(),
                                        onChanged: (String? newValue){
                                          setState(() {
                                            dropdown = newValue!;
                                          });
                                        },

                                      ),
                                    ],
                                  ),
                                ),
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
                                      Navigator.pushNamed(context, 'anuwani_yakazi');

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
