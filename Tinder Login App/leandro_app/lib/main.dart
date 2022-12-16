import 'package:flutter/material.dart';

import 'telaLogin.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: telaLogin(),
    );

  }
} //fim Stateless