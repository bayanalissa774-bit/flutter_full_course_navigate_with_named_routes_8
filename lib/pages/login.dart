// ignore_for_file: sort_child_properties_last, deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          ;
        },
        child: Icon(
          Icons.home,
          color: Colors.white,
        ),
        backgroundColor: Colors.purple[400],
      ),
      appBar: AppBar(
        title: Text(
          "Log in",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: "myfont",
                fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.purple[300],
        centerTitle: true,
      ),
      body: SizedBox(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Your Email :",
                    hintStyle: TextStyle(fontSize: 17),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.purple[900],
                    ),
                  ),
                ),
                width: 266,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66),
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "password :",
                      hintStyle: TextStyle(fontSize: 17),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.purple[900],
                      ),
                      suffixIcon: Icon(Icons.visibility)),
                ),
                width: 266,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Login",
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
            ],
          ),
        ),
      ),
    );
  }
}
