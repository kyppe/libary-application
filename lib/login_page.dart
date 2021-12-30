import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'componnets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: LoginPageView(),
    );
  }
}

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  _LoginPageViewState createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
 
  var comp = Componnets();

  @override
  Widget build(BuildContext context) {
      TextEditingController emailcontroller = TextEditingController();
      TextEditingController passcontroller = TextEditingController();
      TextEditingController usernamecontroller = TextEditingController();
      return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:  [
        comp.myContainer(
              
              200,
              80,
              4,
              "     login",
              TextStyle(fontFamily :'arial',fontWeight: FontWeight.bold,fontSize: 20 )),
          comp.textInput(emailcontroller,"Email", 40,false ) ,    
          comp.textInput(passcontroller,"Password", 20,true ) ,   
           RichText(
                text : const TextSpan(
               text : "Don't have an account ?  ",
                    style: TextStyle( color: Colors.black, fontSize: 10, fontFamily: 'arial',),
                    children: [
                      TextSpan(text: "register now",
                      style: TextStyle( color: Colors.blue,fontWeight: FontWeight.bold ,fontSize: 10, fontFamily: 'arial',),
                      )
                    ] 
                ),
                    ),
          comp.myButtonLink("Login",'', comp.buttonStyle(Colors.blue,Colors.white,TextStyle(fontFamily:'arial',fontSize: 20))),
          comp.myImage("./assets/Sans-titre-3.png")

      ],
      ));
  }
}
