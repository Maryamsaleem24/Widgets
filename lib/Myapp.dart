import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedindex=0;

  List<Widget> widgetpages=[
    pageone(),
    pagetwo(),
  ];
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
       appBar: AppBar(title: const Text('My App')),
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: selectedindex,
          onTap:(index){
          setState(() {
            selectedindex=index;
          });
          } ,
          items: [
        BottomNavigationBarItem(icon:Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon:Icon(Icons.save),label: "d"),
      ]),
      body: widgetpages.elementAt(selectedindex),

    );
  }
}

class pageone extends StatefulWidget {
  const pageone({Key? key}) : super(key: key);

  @override
  State<pageone> createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
  @override
   build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.heart_broken)),
              Text("MacBook"),
              Image(image: NetworkImage("",
                  ),
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ],
    );
  }
}









 class pagetwo extends StatefulWidget {
   const pagetwo({Key? key}) : super(key: key);

   @override
   State<pagetwo> createState() => _pagetwoState();
 }

 class _pagetwoState extends State<pagetwo> {
   @override
   Widget build(BuildContext context) {
     return  Card(
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.heart_broken)),
              Text("MacBook"),
              Image(image: NetworkImage("",
              ),
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),
        );
   }
 }


