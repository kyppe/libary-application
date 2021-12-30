import 'package:library_app/componnets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Scaffold(body: HomePageView());
  }
}

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  var comp = Componnets();
  @override
  Widget build(BuildContext context) {
    ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:  [
          
        comp.myImage("assets/EREREER.png"),
          
        comp.myContainer(
              
              200,
              80,
              4,
              "      Welcome to \n libary application",
              TextStyle(fontFamily :'arial',fontWeight: FontWeight.bold,fontSize: 20 )),
              comp.myImage("assets/FFFFF.png"),
        comp.myButtonLink("Login","login",style),
        comp.myButtonLink("Register",'register', comp.buttonStyle(Colors.white,Colors.blue,TextStyle(fontFamily:'arial',fontSize: 20))),
        ],
      ),
    );
  }
}
