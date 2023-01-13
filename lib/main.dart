
import 'package:flutter/material.dart';
import 'package:immagration/FirstPage.dart';
import 'package:immagration/anuwani_yakazi.dart';
import 'package:immagration/endeleza_ombi.dart';
import 'package:immagration/flutter_step.dart';
import 'package:immagration/habari_wazazi.dart';
import 'package:immagration/home.dart';
import 'package:immagration/home_page.dart';
import 'package:immagration/kidokezo_muhimu.dart';
import 'package:immagration/maombi_page.dart';
import 'package:immagration/muongozo.dart';
import 'package:immagration/navigator_page.dart';
import 'package:immagration/ombi_jipya.dart';
import 'package:immagration/taarifa_binafsi.dart';
import 'package:immagration/ufuatiliaji_ombi.dart';
import 'package:immagration/viambatano.dart';


import 'dharura.dart';
import 'habari_zasafari.dart';
import 'malipo.dart';



void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'homepage',



    routes: {

       'homepage':(context)=>HomePage(),
      'firstpage':(context)=>FirstPage(),
      'home':(context)=>Home(),
      'muongozo':(context)=>Muongozo(),
      'ombi_jipya':(context)=>OmbiJipya(),
      'kidokezo_muhimu':(context)=>KidokezoMuhimu(),
      'endeleza_ombi':(context)=>EndelezaOmbi(),
      'ufuatiliaji_ombi':(context)=>UfuatiliajiOmbi(),
      'taarifa_binafsi':(context)=>TaarifaBinafsi(),
      'anuwani_yakazi':(context)=>AnuwaniKazi(),
      'habari_wazazi':(context)=>HabariWazazi(),
      'habari_zasafari':(context)=>HabariSafari(),
      'dharura':(context)=>Dharura(),
      'viambatano':(context)=>Viambatanisho(),
      'navigator_page':(context)=>NavigatorPage(),
      'malipo':(context)=>Malipo(),
      'flutter_step':(context)=>FlutterStep(),
      'maombi_page':(context)=>MaombiPage()

    },
  ));
}


