import 'package:flutter/material.dart';

class UyishiPage extends StatefulWidget {
  const UyishiPage({super.key});

  @override
  State<UyishiPage> createState() => _UyishiPageState();
}

class _UyishiPageState extends State<UyishiPage> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;
  String? _name;

  _doSignIn(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      print("Welcome to home");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          SizedBox(height: 180,),
          Container(
            child: Center(child: Text("Instagram", style: TextStyle(fontSize: 30),),),
          ),
          Container(
            child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Name",
                          ),
                          validator:(input) => !input!.contains("@") ? "Please enter a valid name": null,
                          onSaved: (input) => _name = input,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email",
                          ),
                          validator:(input) => !input!.contains("@") ? "Please enter a valid email": null,
                          onSaved: (input) => _email = input,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Password",
                          ),
                          validator:(input) => input!.length<6 ? "Must be at least 6 characters": null,
                          onSaved: (input) => _password = input,
                          obscureText: true,
                        ),
                      ),
                      Container(
                        width: 300,
                        child: MaterialButton(
                          onPressed: (){
                            _doSignIn();
                          },
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text("Sign Up"),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(width: 100,),
                          Center(
                            child: Container(
                              child: Center(child: Text("Already have an account?  ", style: TextStyle(fontSize: 12),),),
                            ),
                          ),
                          Center(
                            child: Container(
                              child: Center(child: Text("Log In  ", style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold,),),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}
