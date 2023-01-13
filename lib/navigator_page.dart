import 'package:flutter/material.dart';
import 'package:immagration/pages/homepage.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  final List<String> menuitems= ["Home", "Blogger","Setting"];
  final List<String> menuIcons= ["home","blog","setting"];

  bool sidebarOpen =false;
  double  yoffset =0;
  double  xoffset =60;
  double pageScale=1;
  int selectedMenuItem=0;

  String  pageTitle = "Homepage";

  void setSidebarState(){
    setState(() {
      xoffset = sidebarOpen ? 265 : 60;
      yoffset = sidebarOpen ? 70 : 60;
      pageScale =sidebarOpen ? 0.8 :1 ;
    });
  }
  void setPageTitle(){
    switch(selectedMenuItem){
      case 0:
        Homes();
        break;
      case 1:
        Homes();
        break;
      case 2:
       Homes();
        break;

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFB1F2B36),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 24),
                    child:  Container(
                      color: Color(0xFFB1F2B36),
                      child: Row(
                        children: [

                          Container(
                            padding:const EdgeInsets.only(left: 100),
                            child: Image.asset("assets/images/umoja.png",width: 75,height: 75),
                          )
                        ],
                      ),
                    )
                  ),
                  Container(
                    child: Expanded(
                      child:new  ListView.builder(
                        itemCount: menuitems.length,
                       itemBuilder: (context,index)=>GestureDetector(
                         onTap: (){
                              sidebarOpen= false;
                              selectedMenuItem=index;
                              setSidebarState();
                              setPageTitle();

                         },
                         child:MenuItem(
                           itemIcon: menuIcons[index],
                           itemText: menuitems[index],
                           selected: selectedMenuItem,
                           position: index,
                         ),

                       ),
                      ),
                      
                    ),
                  ),

                  Container(

                    child:MenuItem(
                      itemIcon: 'logout',
                      itemText: "Logout",
                      selected: selectedMenuItem,
                      position: menuitems.length+1,
                    ),
                  ),
                ],
              ),
            ),

             AnimatedContainer(
                curve: Curves.easeInOut,
                duration: Duration(milliseconds:200),
                transform: Matrix4.translationValues(xoffset, yoffset, 1.0)..scale(pageScale),
                width: double.infinity,
                height: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    GestureDetector(

                    onTap: (){
                 //change side bar state
                 sidebarOpen = !sidebarOpen;
                 setSidebarState();

                        },
                      child: Container(
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 24),
                        height: 60,
                        child: Row(
                          children: [

                            Container(
                        padding:EdgeInsets.all(20),
                                child: Icon(Icons.menu))
                          ],

                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20,bottom: 20 ),
                      child: Text(pageTitle,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),

          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String itemText;
  final String itemIcon;
  final int selected;
  final int position;
  MenuItem({required this.itemText,required this.itemIcon,required this.position,required this.selected});
  // const MenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: selected == position ? Color(0xFFB151E26) : Color(0xFFB1F2B36),
      child: Row(
        children: [
          Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/images/$itemIcon.png",width: 25,height: 25,color: Colors.white,),
              )),
          Container(
            padding:const EdgeInsets.all(20),
            child: Text(
              itemText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}

