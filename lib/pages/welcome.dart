// ignore_for_file: sort_child_properties_last, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          centerTitle: true,
          title: Text(
            "welcome",
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: "myfont",
                fontWeight: FontWeight.w500),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15, horizontal: 99)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66))),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 20, color: Colors.grey[800]),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purple[100]),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15, horizontal: 90)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66))),
                ),
              ),
            ],
          ),
        ));
  }
}
