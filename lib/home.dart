import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:immagration/config/palette.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final double _borderRadius=0.0;
  bool isSignupScreen =true;
  bool isRememberMe =false;
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
          Positioned(
            top: 170,
              child: Container(
                height: 380,
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
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [

                        Row(

                          children: [
                            Column(

                              children: [
                                TextButton(onPressed: (){},
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
                        SizedBox(height: 2,),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ExpandableText("Mfumo wa Passport",style: TextStyle(fontSize: 14.0,color: Colors.teal),
                                  collapseText: 'show less',
                                  expandText: 'Show More',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ExpandableText("Hii ni huduma mpya inayomuwezesha muombaji kujaza Fomu ya Maombi ya Pasipoti kwa njia ya Kielektroniki akiwa mahali popote. Baada ya kujaza fomu hiyo, atatakiwa kuichapisha (Print) na kuiwasilisha pamoja na vielelezo vingine katika Ofisi ya Uhamiaji iliyo karibu naye kwa ajili ya kushughulikiwa maombi yake ya Pasipoti. ",style: TextStyle(fontSize: 11.0),
                                  collapseText: 'show less',
                                  expandText: 'Show More',
                                  maxLines: 1,
                                  linkColor: Colors.red,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ExpandableText("Chagua Huduma",style: TextStyle(fontSize: 14.0,color: Colors.teal),
                                  collapseText: 'show less',
                                  expandText: 'Show More',
                                ),
                              ),
                              Container(

                                child: Stack(
                                  children: [

                                    InkWell(
                                      onTap: (){
                                        Navigator.pushNamed(context, 'ombi_jipya');
                                      },
                                      child: Positioned(

                                            child: Material(

                                              child: Container(
                                                height: 140.0,


                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius: BorderRadius.circular(0),
                                                  gradient: LinearGradient(
                                                    colors: [Colors.white,Colors.white],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey.withOpacity(0.3),
                                                      offset: new Offset(-10, 10.0),
                                                      blurRadius: 20,
                                                      spreadRadius: 4.0
                                                    )
                                                  ]

                                              ),

                                        )

                              ),),
                                    ),


                                    Positioned(
                                      top: 0,
                                        left: 0,


                                        child: InkWell(
                                          onTap: (){
                                            Navigator.pushNamed(context, 'ombi_jipya');
                                          },
                                          child: Card(
                                            elevation: 10.0,
                                            shadowColor: Colors.grey.withOpacity(0.9),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(25.0),
                                            ),
                                            child: Container(
                                              height: 120,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10.0),
                                                image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage("assets/images/pas1.jpg"),
                                                )
                                              ),
                                            ),
                                          ),
                                        )),



                                    Positioned(
                                      top: 0,
                                        left: 100,
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.pushNamed(context, 'ombi_jipya');
                                          },
                                          child: Container(
                                            height: 150,
                                            width: 180,
                                            child: Column(
                                              children: [
                                                TextButton(onPressed: (){
                                                  Navigator.pushNamed(context, 'ombi_jipya');
                                                },
                                                    child: Text("Ombi Jipya",style: TextStyle(color: Colors.blue,fontSize: 18),)),
                                                Text("Kwa Mwombaji anayeanza kujaza fomu ya maombi ya Pasipoti kwa njia ya kielektroniki kwa mara ya kwanza (hata kama alishawahi kuwa na pasipoti).",style: TextStyle(fontSize: 11,),),
                                                Divider(color:Colors.black,),

                                              ],
                                            ),
                                          ),
                                        )),



                                  ]
                                ),
                              ),
                             SizedBox(height: 10,),
                              Container(
                                height: 80,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.pushNamed(context, 'endeleza_ombi');
                                      },
                                      child: Container(
                                        child: AspectRatio(aspectRatio: 1.7 /1,
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.grey),
                                                borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: Row(
                                              children:<Widget> [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [

                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 10),
                                                      child: Text("Endeleze",style: TextStyle(fontSize: 15,color: Colors.blue,fontWeight: FontWeight.bold),),
                                                    ),
                                                    SizedBox(height: 2,),
                                                    Text("Ombi",style: TextStyle(fontSize: 15,color: Colors.blue,fontWeight: FontWeight.bold),),


                                                  ],
                                                ),
                                                SizedBox(width: 10,),
                                                Container(
                                                  width: 40,
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(15),
                                                      color: Color.fromRGBO(0, 0, 0, 0)
                                                  ),
                                                  // child: Icon(
                                                  //   Icons.filter_drama_sharp,
                                                  //   color: Colors.lightBlue,
                                                  //   size: 30,
                                                  // ),
                                                  child:Image.asset('assets/images/right.png'),
                                                  // child: Row(
                                                  //   children: [
                                                  //     Container(
                                                  //       width: 56,
                                                  //       padding: EdgeInsets.all(10),
                                                  //       decoration: BoxDecoration(
                                                  //         borderRadius: BorderRadius.circular(10),
                                                  //         color: Color.fromRGBO(251, 53, 105, 1)
                                                  //       ),
                                                  //
                                                  //     ),
                                                  //
                                                  //   ],
                                                  // ),
                                                ),



                                              ],
                                            ),
                                          ),


                                        ),
                                      ),
                                    ),

                                    InkWell(
                                      onTap: (){
                                        Navigator.pushNamed(context, 'ufuatiliaji_ombi');
                                      },
                                      child: Container(
                                        child: AspectRatio(aspectRatio: 1.8 /1,
                                          child: Container(
                                            margin: EdgeInsets.only(left: 5),
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.grey),
                                                borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: Row(
                                              children:<Widget> [

                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 10),
                                                      child: Text("Ufuatiliaji",style: TextStyle(fontSize: 15,color: Colors.blue,fontWeight: FontWeight.bold),),
                                                    ),
                                                    SizedBox(height: 2,),
                                                    Text("Wa Ombi",style: TextStyle(fontSize: 15,color: Colors.blue,fontWeight: FontWeight.bold),),



                                                  ],
                                                ),
                                                SizedBox(width: 10,),
                                                Container(
                                                  width: 40,
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(15),
                                                      color: Color.fromRGBO(0, 0, 0, 0)
                                                  ),
                                                  // child: Icon(
                                                  //   Icons.filter_drama_sharp,
                                                  //   color: Colors.lightBlue,
                                                  //   size: 30,
                                                  // ),
                                                  child:Image.asset('assets/images/right.png'),
                                                  // child: Row(
                                                  //   children: [
                                                  //     Container(
                                                  //       width: 56,
                                                  //       padding: EdgeInsets.all(10),
                                                  //       decoration: BoxDecoration(
                                                  //         borderRadius: BorderRadius.circular(10),
                                                  //         color: Color.fromRGBO(251, 53, 105, 1)
                                                  //       ),
                                                  //
                                                  //     ),
                                                  //
                                                  //   ],
                                                  // ),
                                                ),



                                              ],
                                            ),

                                          ),

                                        ),
                                      ),
                                    ),

                                  ],

                                ),
                              ),





                            ],
                          ),
                        ),
                      ],
                    ),
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
