import 'package:flutter/material.dart';

class telaLogin extends StatefulWidget {
  @override
  _telaLoginState createState() => _telaLoginState();
}

class _telaLoginState extends State<telaLogin> {
  Widget _body() {
    return Column(
      children: [
        SizedBox(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 170.0, bottom: 70.0, left: 100.0, right: 100.0),
                    child: Image.asset('assets/images/img2.png'),
                  ),
                ],
              ),
              Text(
                'Location Changer',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Container(
                height: 4,
              ),
              Text('Plugin app Bar Trader', style: TextStyle(fontSize: 15)),
              Container(
                height: 30,
              ),
              ElevatedButton(
                  child: Text('Login with Facebook'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                  onPressed: () {
                    print('Pressionado');
                  }),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // child: Image.asset('assets/images/img1.jpg', fit: BoxFit.fitWidth,)
        ),
        Container(color: Colors.pink),
        _body(),
      ],
    ));
  }
}
