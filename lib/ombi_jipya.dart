import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'config/palette.dart';

class OmbiJipya extends StatefulWidget {
  const OmbiJipya({Key? key}) : super(key: key);

  @override
  State<OmbiJipya> createState() => _OmbiJipyaState();
}

class _OmbiJipyaState extends State<OmbiJipya> {
  String dropdownvalue = 'Ombi Jipya';
  var items =  ['Ombi Jipya','Pasipoti imejaa/Kupata Pasipoti ya Kielektronic','Pasipoti iliyopotea','Kuharibika'];

  String dropdownvalues = 'Nchini Tanzania';
  var eneo =  ['Nchini Tanzania','Nje ya Nchi (UBALOZINI)'];

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
                        padding: const EdgeInsets.only(top: 30.0,right: 14),
                        child: Image.asset(
                          'assets/images/umoja.png',
                          height: 100.0,
                          width: 100.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0,right: 10),
                        child: Text("e-Immigration Portal",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),

                    ],
                  ),
                ),



              ),
            ),

          ),
          Expanded(
            child: Positioned(
                top: 170,

                  child: Container(
                    height: 390,
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


                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ExpandableText("OMBI LA PASSPORTI",style: TextStyle(fontSize: 14.0,color: Colors.teal),
                                      collapseText: 'show less',
                                      expandText: 'Show More',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0,right: 2),
                                    child: ExpandableText("Wakati wa ujazaji wa fomu ya maombi ya pasipoti,\n Mwombaji anatakiwa kujaza taarifa zake kwa usahihi \n na ukamilifu, na mara atakapomilisha\n atapatiwa Namba ya Ombi (Application Number) \n na Namba ya Utambulisho \n (Reference ID) ya Ombi lake ",style: TextStyle(fontSize: 11.0),
                                      collapseText: 'show less',
                                      expandText: 'Show More',
                                      maxLines: 1,
                                      linkColor: Colors.red,
                                    ),
                                  ),



                                ],
                              ),
                            ),
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

                                        SizedBox(height: 1,),
                                        Text("Taarifa Za Msingi",style: TextStyle(fontSize: 20,color: Colors.teal,fontWeight: FontWeight.w500),),
                                        SizedBox(height:20),

                                        Container(
                                          height: 70,
                                          width: 250,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right: 155),
                                                child: Text("Aina Ya Ombi*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
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
                                        IntlPhoneField(
                                          decoration: InputDecoration(
                                            labelText: 'Phone Number',

                                          ),
                                          initialCountryCode: 'TZ',
                                          onChanged: (phone) {
                                            print(phone.completeNumber);
                                          },
                                        ),
                                        // TextFormField(
                                        //   controller: phone,
                                        //   decoration: InputDecoration(
                                        //
                                        //       labelText: "Enter Your PhoneNumber"
                                        //   ),
                                        //   validator: (value){
                                        //     if(value!.isEmpty || !RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value!)){
                                        //       return "Enter correct PhoneNumber";
                                        //     }else{
                                        //       return null;
                                        //     }
                                        //   },
                                        // ),

                                        SizedBox(height:10),

                                        Container(
                                          height: 70,
                                          width: 250,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right: 100),
                                                child: Text("Eneo Alipo Muombaji*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                              ),

                                              DropdownButton(


                                                value: dropdownvalues,

                                                icon: Icon(
                                                  Icons.keyboard_arrow_down,

                                                ),

                                                iconSize: 24,
                                                elevation: 16,
                                                isExpanded: true,
                                                items:eneo.map((String eneo) {
                                                  return DropdownMenuItem(

                                                      value: eneo,
                                                      child: Text(eneo)
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


                                        SizedBox(height:10),
                                        Container(
                                          height: 90,
                                          width: 250,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right: 50),
                                                child: Text("Mahali/Ofisi ambapo Ombi litashughulikiwa*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                              ),

                                              DropdownButton(


                                                value: dropdown,

                                                icon: Icon(
                                                  Icons.keyboard_arrow_down,

                                                ),

                                                iconSize: 24,
                                                elevation: 16,
                                                isExpanded: true,
                                                items:nchi.map((String eneo) {
                                                  return DropdownMenuItem(

                                                      value: eneo,
                                                      child: Text(eneo)
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
                                                Navigator.pushNamed(context, 'kidokezo_muhimu');

                                              },
                                              child: Text('Anza Ombi >>',),),
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
          ),
          Expanded(
            child: Positioned(

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
                )),
          )


        ],
      ),
    );
  }
}
