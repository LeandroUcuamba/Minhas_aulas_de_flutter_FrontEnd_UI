import 'package:flutter/material.dart';

import 'home_page.dart';



class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   
   String email ='';
   String password ='';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
         padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text){
                   email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email' ,
                  border: OutlineInputBorder(),
                 ),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (text){
                   password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password' ,
                  border: OutlineInputBorder(),
                 ),
              ),
              SizedBox(height: 15),
              RaisedButton(
                onPressed: (){
                   if(email == 'leandro' && password =='123'){
                       Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                       );
                    }
                   else{
                       print('Incorrecto');
                    }
                }, 
                child: Text('Entrar'),
               )
             ],
           ),
         ),
       ),
    );

  }
}