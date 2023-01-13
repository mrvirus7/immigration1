import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:immagration/config/palette.dart';

class KidokezoMuhimu extends StatefulWidget {
  const KidokezoMuhimu({Key? key}) : super(key: key);

  @override
  State<KidokezoMuhimu> createState() => _KidokezoMuhimuState();
}

class _KidokezoMuhimuState extends State<KidokezoMuhimu> {
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
          Expanded(
            child: Positioned(
                top: 150,
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
                                  child: ExpandableText("Kidokezo Muhimu",style: TextStyle(fontSize: 14.0,color: Colors.teal),
                                    collapseText: 'show less',
                                    expandText: 'Show More',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ExpandableText("Tafadhali hifadhi Namba ya Utambulisho (Reference ID) sehemu salama, kwani itahitajika pindi Mwombaji atakapohitaji KUENDELEA na Ombi lake hapo baadae."
                                    "Aidha, Namba hiyo itahitajika pia endapo kutatokea tatizo la kukatika kwa mawasiliano wakati Mwombaji anajaza fomu, au ikiwa anahitaji kukatisha ujazaji wa fomu yake kwa sasa, na kuendelea kutoka pale alipoishia hapo baadaye.",style: TextStyle(fontSize: 11.0),
                                    collapseText: 'show less',
                                    expandText: 'Show More',
                                    maxLines: 1,
                                    linkColor: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Namba ya Utambulisho",style: TextStyle(fontSize: 12.0,color: Colors.teal),

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Namba ya Utambulisho wako",style: TextStyle(fontSize: 11.0),

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("22JX-C12R-GF01",style: TextStyle(fontSize: 11.0),

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Tarehe",style: TextStyle(fontSize: 11.0),

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("01st December, 2022",style: TextStyle(fontSize: 11.0),

                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 160),
                            child: Row(
                              children: [

                                TextButton(
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.lightBlueAccent,
                                      textStyle: TextStyle(fontSize: 14)

                                  ),
                                  onPressed: (){
                                    Navigator.pushNamed(context, 'flutter_step');

                                  },
                                  child: Text('Endelea na Ombi >>',),),
                                SizedBox(width: 16,),


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  
                )
            ),
          ),
          Expanded(
            child: Positioned(

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
                )),
          )
        ],
      ),
    );
  }
}
