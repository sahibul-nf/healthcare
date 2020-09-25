import 'package:flutter/material.dart';
// import 'package:my_app/signin_page.dart';
// import 'package:my_app/signup_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[600],
        body: Stack(
          children: <Widget>[
            Positioned(
              top: -5,
              left: -5,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple[700],
                    borderRadius: BorderRadius.circular(8)),
                height: 70,
                width: 70,
              ),
            ),
            Positioned(
              right: -5,
              bottom: -5,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[700],
                      borderRadius: BorderRadius.circular(8)),
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.4, -0.2),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.deepPurple[700],
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
            Align(
              alignment: Alignment(-0.4, -0.2),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple[700],
                    borderRadius: BorderRadius.circular(6)),
                height: 30,
                width: 30,
              ),
            ),
            Align(
              alignment: Alignment(-0.3, -0.5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple[700],
                    borderRadius: BorderRadius.circular(8)),
                height: 50,
                width: 50,
              ),
            ),
            Align(
              alignment: Alignment(0.5, -0.6),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple[700],
                    borderRadius: BorderRadius.circular(6)),
                height: 40,
                width: 40,
              ),
            ),
            Align(
              alignment: Alignment(-0.5, -0.6),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple[700],
                    borderRadius: BorderRadius.circular(4)),
                height: 20,
                width: 20,
              ),
            ),
            (MediaQuery.of(context).orientation == Orientation.portrait)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: generateContainer(),
                  )
                : ListView(
                    padding: EdgeInsets.only(top: 40, bottom: 80),
                    children: <Widget>[
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: generateContainer(),
                        ),
                      )
                    ],
                  )
          ],
        ));
  }
}

List<Widget> generateContainer() {
  return <Widget>[
    Container(
      margin: EdgeInsets.only(top: 100),
      height: 112.25,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/images/logo_hi.png'))),
    ),
    Container(
      margin: EdgeInsets.fromLTRB(0, 120, 0, 0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'New Experience',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            // 'Have a problem\nthat you can solved?\nDon\'t worry, lets\nget started.',
            'Watch a new move much \neasier than any before',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w200),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    BtnGetStarted(),
    ToSignIn()
  ];
}

class BtnGetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 70, bottom: 20),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 200,
          height: 50,
          child: Material(
            borderRadius: BorderRadius.circular(8),
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return SignUpPage();
                // }));
              },
              splashColor: Colors.deepPurple[200],
              borderRadius: BorderRadius.circular(8),
              child: Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepPurple[600]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ToSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //   return SignInPage();
        // }));
      },
      child: RichText(
          text: TextSpan(
              text: 'Already have an account? ',
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                  fontSize: 14),
              children: <TextSpan>[
            TextSpan(
                text: 'Sign In',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14))
          ])),
    );
  }
}
