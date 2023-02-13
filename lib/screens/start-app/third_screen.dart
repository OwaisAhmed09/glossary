import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:glosrapp/screens/start-app/second_screen.dart';

class third_screen extends StatefulWidget {
  const third_screen({super.key});

  @override
  State<third_screen> createState() => _third_screenState();
}

TextEditingController num = TextEditingController();

class _third_screenState extends State<third_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Within the SecondRoute widget
              Row(
                children: [
                  BackButton(
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => second_screen(),
                          ));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Enter your mobile number",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TextField(
                        //  controller: num,
                        decoration: InputDecoration(
                            labelText: "Mobile Number",
                            hintText: "  +882",
                            prefix: Image(
                              image: AssetImage("assets/images/flage.png"),
                              width: 30,
                            )),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: const EdgeInsets.all(40.0),
                  ),
                  const SizedBox(height: 120),
                  Container(
                    padding: EdgeInsets.only(right: 15),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const third_screen(),
                            ));
                      },
                      child: Text(
                        '>>',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
