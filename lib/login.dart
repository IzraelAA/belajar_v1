import 'package:flutter/material.dart';
import 'package:belajar_v1/dashboard.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  String nUsername, nPassword;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image.asset("images/Login.jpg"),
              ),
              Container(
                margin: EdgeInsets.only(top: 235),
                // height: 500,
                padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
                decoration: BoxDecoration(
                    color: Color(0xffF4F7FC),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),

                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Form(
                      key: _formKey,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Username",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Username kosong';
                                }
                                return null;
                              },
                              controller: myUsernameController,
                              decoration:
                                  InputDecoration(hintText: "Masukan Username"),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Password",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Password kosong';
                                }
                                return null;
                              },
                              controller: myPasswordController,
                              decoration:
                                  InputDecoration(hintText: "Masukan Password"),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            MaterialButton(
                              minWidth: 85.0,
                              height: 50.0,
                              color: Colors.blue,
                              textColor: Colors.white,
                              onPressed: () {
                                nUsername = myUsernameController.text;
                                nPassword = myPasswordController.text;

                                if (_formKey.currentState.validate()) {
                                  if (nUsername != 'Admin') {
                                    print("username salah");
                                  } else if (nPassword.length <= 5) {
                                    print("password harus lebih dari 5 ");
                                  } else {
                                    //aksi pindah
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Dashboard()));
                                  }
                                }
                              },
                              child: Text('Login'),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
