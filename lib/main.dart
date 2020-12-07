import 'package:flutter/material.dart';

import 'animation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Column(
          children: <Widget>[
            Container(
                height: size.height * 0.44,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/topui.png'),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: size.height * 0.052,
                      top: size.height * 0.088,
                      width: size.height * 0.0616,
                      height: size.height * 0.24,
                      child: FadeAnimation(
                          2,
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/star.png'))),
                          )),
                    ),
                    Positioned(
                      left: size.height * 0.24,
                      top: size.height * 0.01,
                      width: size.height * 0.088,
                      height: size.height * 0.21,
                      child: FadeAnimation(
                          3,
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/star.png'))),
                          )),
                    ),
                    Positioned(
                      right: size.height * 0.06,
                      top: size.height * 0.2,
                      width: size.height * 0.14,
                      height: size.height * 0.26,
                      child: FadeAnimation(
                          3,
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/star.png'))),
                          )),
                    ),
                    Positioned(
                      child: FadeAnimation(
                          3,
                          Container(
                            margin: EdgeInsets.only(top: size.height * 0.035),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.height * 0.07,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                    )
                  ],
                )),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(size.height * 0.05),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                          4,
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Email or Phone number",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: size.height * 0.052,
                      ),
                      FadeAnimation(
                          2,
                          Container(
                            height: size.height * 0.088,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffbc00dd)),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: size.height * 0.052,
                      ),
                      FadeAnimation(
                          4,
                          Text("Forget Password ?",
                              style: TextStyle(
                                  color: Color(0xffbc00dd),
                                  fontWeight: FontWeight.bold)))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
