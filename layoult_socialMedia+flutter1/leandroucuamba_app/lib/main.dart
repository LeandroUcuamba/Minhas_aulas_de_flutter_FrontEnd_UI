import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
       ),
       home: Home(),
    );
    
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(40),
              child: Column(
                children: [
                   Padding(
                    padding: EdgeInsets.only(top:10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text('Óla,',style: TextStyle(fontSize: 25, color: Colors.black45),),
                               Text('EvenusFI',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)],
                          ),
                          CircleAvatar(radius: 35,),
                        ],),
                    ),
                   Padding(
                     padding: EdgeInsets.only(top:20), 
                     child: Container(
                        decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white,
                        ),
                       child: TextField(
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          decoration: InputDecoration(
                            fillColor: Colors.white, 
                            contentPadding: EdgeInsets.only(bottom:15 , 
                            top:15 , right:20 , left:20
                            ),
                            prefixIcon: Padding(
                              padding:EdgeInsets.only(right: 15, left: 15),
                              child: CircleAvatar(
                                child: Icon(Icons.search),
                              ),
                           ),
                           hintText: 'Pesquisar amigos',
                           border: InputBorder.none,
                          ),
                       ),
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(top: 10),
                     child: Row(
                       children: [
                         Container(
                           height: 100,
                           width: MediaQuery.of(context).size.width - 80,
                           child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (BuildContext context, int index){
                                return Padding(
                                  padding: EdgeInsets.only(left:10),
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundColor: 
                                       index == 0 ? Colors.white : Colors.blue,
                                   child: CircleAvatar(
                                    radius: 33,
                                    backgroundColor: Colors.white,
                                    child: index == 0 ? Icon(Icons.add) : Text("$index"),
                                  ),
                                 ),
                                );
                            },
                          ),
                         ),
                       ],
                     ),
                   ),
                   Padding( 
                     padding: EdgeInsets.only(top: 10),
                     child: Container(
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.blue,
                        ),
                        height: MediaQuery.of(context).size.height / 2.6,
                        child: Column(
                          children: [
                            Container(
                               height: MediaQuery.of(context).size.height / 3.9 ,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20), 
                                  topRight: Radius.circular(20)
                                  ),
                                 color: Colors.red,
                               ),
                            ),
                            Container(
                              color: Colors.white,
                              height: MediaQuery.of(context).size.height / 7.8,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                   CircleAvatar(radius: 20,),
                                   Padding(padding: EdgeInsets.only(left: 10),
                                   child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: [Text('Leandro Dev', style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 20,)), 
                                          Text('Ucuamba', style: TextStyle(fontSize: 16))],
                                     ),
                                   ),
                                 Icon(Icons.more_vert),
                              ]),
                            ),
                          ]),
                     ),
                   ),
              ]),
            )
          ),
    );
    
  }
}


