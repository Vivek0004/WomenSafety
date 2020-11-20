import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static const String id = 'sign_up_page';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Stack createField({double width, double height, String text}) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(18.0)),
          ),
          width: width * 0.8,
          height: height * 0.08,
        ),
        Container(
          margin: EdgeInsets.only(left: 15.0),
          color: Colors.white,
          child: Text('$text *'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              width: _width,
              height: _height * 0.45,
              color: Color(0xff4a8fed),
            ),
            Column(
              children: <Widget>[
                Container(
                  child: Text(
                    'Welcome',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                    ),
                    width: _width * 0.9,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 4),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                width: 1.0, // Underline thickness
                              ))),
                              child: Text('SIGN UP'),
                            ),
                            Text(
                              'LOG IN',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        createField(
                            width: _width, height: _height, text: 'Username'),
                        SizedBox(
                          height: 10,
                        ),
                        createField(
                            width: _width,
                            height: _height,
                            text: 'Phone Number'),
                        SizedBox(
                          height: 10,
                        ),
                        createField(
                            width: _width, height: _height, text: 'Password'),
                        SizedBox(
                          height: 10,
                        ),
                        createField(
                            width: _width,
                            height: _height,
                            text: 'Confirm Password'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: _width * 0.1,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 5.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                              ),
                              height: 40,
                              width: 40,
                            ),
                            Text('Male'),
                            SizedBox(
                              width: _width * 0.1,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 5.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                              ),
                              height: 40,
                              width: 40,
                            ),
                            Text('Female'),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: _width * 0.7,
                          child: Text(
                            'By pressing \'Submit\' you agree to our terms and conditions',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Color(0xff4A8FED),
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _height * 0.1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
