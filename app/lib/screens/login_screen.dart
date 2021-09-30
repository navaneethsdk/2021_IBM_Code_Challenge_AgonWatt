import 'package:app/components/faded.dart';
import 'package:app/main.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(
                            1,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-1.png'))),
                            )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.3,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-2.png'))),
                            )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.5,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/clock.png'))),
                            )),
                      ),
                      Positioned(
                        child: FadeAnimation(
                            1.6,
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Log In",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "AgonWatt",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                          1.8,
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
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Consumer ID",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Number of Family Members",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                          2,
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          MyHomePage(title: 'AgonWatt')));
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(71, 76, 191, 1),
                                    Color.fromRGBO(71, 76, 191, .8),
                                  ])),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 70,
                      ),
                      FadeAnimation(
                          1.5,
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Color.fromRGBO(143, 148, 251, 1)),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
          // body: SingleChildScrollView(
          //   child: Column(
          //     children: <Widget>[
          //       Padding(
          //         padding: const EdgeInsets.only(top: 60.0),
          //         child: Center(
          //           child: Container(
          //             padding: EdgeInsets.all(20),
          //             child: Text(
          //               "⚡",
          //               style: TextStyle(
          //                 fontSize: 100,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //       Padding(
          //         //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
          //         padding: EdgeInsets.symmetric(horizontal: 15),
          //         child: TextField(
          //           decoration: InputDecoration(
          //               border: OutlineInputBorder(),
          //               labelText: 'Email',
          //               hintText: 'Enter valid email id as abc@gmail.com'),
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(
          //             left: 15.0, right: 15.0, top: 15, bottom: 0),
          //         //padding: EdgeInsets.symmetric(horizontal: 15),
          //         child: TextField(
          //           obscureText: true,
          //           decoration: InputDecoration(
          //               border: OutlineInputBorder(),
          //               labelText: 'Password',
          //               hintText: 'Enter secure password'),
          //         ),
          //       ),
          //       Padding(
          //         //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
          //         padding: const EdgeInsets.only(
          //             left: 15.0, right: 15.0, top: 15, bottom: 0),
          //         child: TextField(
          //           decoration: InputDecoration(
          //               border: OutlineInputBorder(),
          //               labelText: 'Consumer Number',
          //               hintText: 'Enter valid email id as abc@gmail.com'),
          //         ),
          //       ),
          //       Padding(
          //         //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
          //         padding: const EdgeInsets.only(
          //             left: 15.0, right: 15.0, top: 15, bottom: 0),
          //         child: TextField(
          //           decoration: InputDecoration(
          //               border: OutlineInputBorder(),
          //               labelText: 'Number of family numbers',
          //               hintText: 'Enter valid email id as abc@gmail.com'),
          //         ),
          //       ),
          //       FlatButton(
          //         onPressed: () {
          //           //TODO FORGOT PASSWORD SCREEN GOES HERE
          //         },
          //         child: Text(
          //           'Forgot Password',
          //           style: TextStyle(color: Colors.blue, fontSize: 15),
          //         ),
          //       ),
          //       Container(
          //         height: 50,
          //         width: 250,
          //         decoration: BoxDecoration(
          //             color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          //         child: FlatButton(
          //           onPressed: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (_) => MyHomePage(title: 'AgonWatt')));
          //           },
          //           child: Text(
          //             'Login',
          //             style: TextStyle(color: Colors.white, fontSize: 25),
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         height: 130,
          //       ),
          //       Text('New User? Create Account')
          //     ],
          //   ),
          // ),
        ));
  }
}
