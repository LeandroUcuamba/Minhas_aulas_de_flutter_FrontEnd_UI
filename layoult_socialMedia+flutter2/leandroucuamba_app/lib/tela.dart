import 'package:flutter/material.dart';


class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(
          child: Container(
            color: Colors.blue,
            child: Stack(
              children: [
                 Column(
                   children: [
                     SizedBox(
                       height: MediaQuery.of(context).size.height / 1.55,
                     ),
                     Padding(
                      padding: EdgeInsets.all(8),
                       child: Container(
                          child: Row(
                             children: [
                               Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  height: MediaQuery.of(context).size.height / 4,
                                  width: MediaQuery.of(context).size.width / 2.1,
                                  color: Colors.red,
                                ),
                               ),
                               Column(
                                 children: [
                                   Padding(
                                     padding: EdgeInsets.all(5),
                                     child: Container(
                                       height: MediaQuery.of(context).size.height / 8.5,
                                       width: MediaQuery.of(context).size.width / 2.6,
                                       color: Colors.red,
                                     ),
                                   ),
                                   Padding(
                                     padding: EdgeInsets.all(5),
                                     child: Container(
                                       height: MediaQuery.of(context).size.height / 8.5,
                                       width: MediaQuery.of(context).size.width / 2.6,
                                       color: Colors.red,
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                          ),
                       ),
                      ),
                   ],
                 ),
                 Container(
                   decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )
                   ),
                   height: MediaQuery.of(context).size.height / 1.6,
                   child: Padding(
                    padding: EdgeInsets.all(20),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.arrow_back, size:30),
                                Icon(Icons.more_vert, size:30),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(top:20),  
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Text('Meu Perfil', style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 27,
                                  )
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  CircleAvatar(radius: 47, backgroundColor: Colors.blue,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                      "Leandro Ucuamba",
                                       style: TextStyle(
                                         fontSize: 20,
                                         fontWeight: FontWeight.bold,
                                       ),
                                      ),      
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 10, right: 20, left: 20,
                                    ),
                                    child: Text('Texto informativo do perfil do usuario',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ), 
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 18, left: 20, right: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            Text("Fotos", 
                                              style: TextStyle(
                                                color: Colors.grey, fontSize: 20
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top:4, left:8, right:8),
                                              child: Text(
                                                '400',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                ),
                                            ),
                                          ],
                                        ),
                                        
                                         Column(
                                          children: [
                                            Text("Seguindo", 
                                              style: TextStyle(
                                                color: Colors.grey, fontSize: 20
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top:4, left:8, right:8),
                                              child: Text(
                                                '400',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                ),
                                            ),
                                          ],
                                        ),

                                         Column(
                                          children: [
                                            Text("Seguidores", 
                                              style: TextStyle(
                                                color: Colors.grey, fontSize: 20
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top:4, left:8, right:8),
                                              child: Text(
                                                '400',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                ),
                                            ),
                                          ],
                                        ),

                                      ],),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                 ),
              ],
            ),
          ),
       ),
     );
  }
}