
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:immagration/config/palette.dart';

class Viambatanisho extends StatefulWidget {
  const Viambatanisho({Key? key}) : super(key: key);

  @override
  State<Viambatanisho> createState() => _ViambatanishoState();
}

class _ViambatanishoState extends State<Viambatanisho> {
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
                                TextButton(onPressed: (){},
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
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ExpandableText("Nakala Halisi za Viamabatanisho vifuatavyo vinaweza kuhitajika wakati wa kuwasilisha Ombi Lako.",style: TextStyle(fontSize: 12.0,color: Colors.teal),
                                collapseText: 'show less',
                                expandText: 'Show More',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ExpandableText("1. Cheti cha Kuzaliwa Mwombaji\n 2. Cheti Au Kiapo cha Kuzaliwa Mzazi wa Mwombaji\n 3. Kitambulisho cha Taifa \n 4. Picha ya Mwombaji ya hivi karibuni yenye kivuli cha rangi ya buluu isiyokoza (Light blue Background) \n 5. Ada ya Fomu Tsh 20,000 \n 6. Ushahidi wa Safari au Ushahidi wa Shughuli anayofanya Mwombaji",style: TextStyle(fontSize: 11.0),
                                collapseText: 'show less',
                                expandText: 'Show More',
                                maxLines: 1,
                                linkColor: Colors.red,
                              ),
                            ),
                           
                          ],
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
