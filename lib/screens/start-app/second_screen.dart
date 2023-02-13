import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:glosrapp/screens/start-app/third_screen.dart';

class second_screen extends StatefulWidget {
  const second_screen({super.key});

  @override
  State<second_screen> createState() => _second_screenState();
}

class _second_screenState extends State<second_screen> {
  TextEditingController num = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Positioned(
                        child: Stack(
                      children: [
                        Image.asset("assets/images/Mask.png"),
                      ],
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Get your groceries\n with nector",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(40.0),
                child: TextField(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => third_screen(),
                        ));
                  },
                  keyboardType: TextInputType.number,
                  controller: num,
                  decoration: InputDecoration(
                      hintText: "+882",
                      prefix: Image(
                        image: AssetImage("assets/images/flage.png"),
                        width: 30,
                      )),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Text(
                  "Or connect with social media",
                  style: TextStyle(
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ),
              ),
              // SizedBox(height: 50),
              // SignInButton(
              //   Buttons.Google,
              //   text: "Sign up with Google",
              //   onPressed: () {},
              // ),
              SizedBox(height: 50),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.mail),
                label: Text(" Continue with Google          "),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5383EC),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.facebook),
                label: Text("Continue with Facebook      "),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5383EC),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
