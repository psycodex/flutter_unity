import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:psyc_fit/common/theme_helper.dart';
import 'package:psyc_fit/ui/Components/WhiteTick.dart';
import 'package:psyc_fit/ui/styles.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/user.birthday.read',
      'https://www.googleapis.com/auth/user.emails.read',
      'https://www.googleapis.com/auth/user.gender.read',
      'https://www.googleapis.com/auth/userinfo.profile',
    ],
  );

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  GoogleSignInAccount? _currentUser;

  @override
  Widget build(BuildContext context) {
    return (new Scaffold(
      body: new Container(
          decoration: new BoxDecoration(
            image: backgroundImage,
          ),
          child: new Container(
              decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                colors: <Color>[
                  const Color.fromRGBO(162, 146, 199, 0.8),
                  const Color.fromRGBO(51, 51, 63, 0.9),
                ],
                stops: [0.2, 1.0],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0),
              )),
              child: new ListView(
                padding: const EdgeInsets.all(0.0),
                children: <Widget>[
                  new Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Tick(image: tick),
                          new Container(
                            height: 150,
                            alignment: Alignment.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  size: 50,
                                  color: HexColor("#EC2D2F"),
                                ),
                                onTap: () async {
                                  await _handleSignIn();
                                  // setState(() {
                                  //   showDialog(
                                  //     context: context,
                                  //     builder: (BuildContext context) {
                                  //       return ThemeHelper().alartDialog(
                                  //           "Google Plus",
                                  //           "You tap on GooglePlus social icon.",
                                  //           context);
                                  //     },
                                  //   );
                                  // });
                                },
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                              GestureDetector(
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  size: 50,
                                  color: HexColor("#3E529C"),
                                ),
                                onTap: () {
                                  setState(() {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return ThemeHelper().alartDialog(
                                            "Facebook",
                                            "You tap on Facebook social icon.",
                                            context);
                                      },
                                    );
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ))),
    ));
  }

  Future<void> _handleSignIn() async {
    try {
      await widget._googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }
}
