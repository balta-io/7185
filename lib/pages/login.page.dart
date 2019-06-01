import 'package:flutter/material.dart';
import 'package:shopping/pages/home.page.dart';
import 'package:shopping/pages/signup.page.dart';
import 'package:shopping/widgets/text/h1.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 120,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: <Widget>[
              Container(
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black12,
                        offset: new Offset(1, 2.0),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  height: 410,
                  child: ListView(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              H1(
                                text: "Welcome,",
                              ),
                              Text(
                                "Sign In to continue",
                                style: Theme.of(context).textTheme.headline,
                              ),
                            ],
                          ),
                          FlatButton(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Theme.of(context).buttonColor,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      TextFormField(
                        // autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        // autofocus: true,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          child: Text(
                            "Forgot Password?",
                            textAlign: TextAlign.right,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        height: 60,
                        child: FlatButton(
                            child: Text(
                              "Sign In",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () => {}),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  "- OR -",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.black12,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 24,
                        width: 100,
                        //color: Colors.red,
                        child: Image.asset("assets/facebook.png"),
                      ),
                      Text(
                        "Sign In with Facebook",
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.black12,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 24,
                        width: 100,
                        //color: Colors.red,
                        child: Image.asset("assets/google.png"),
                      ),
                      Text(
                        "Sign In with Google",
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
