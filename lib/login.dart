import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/Admin/adminDashboard.dart';
import 'package:projects/MyHomepage.dart';
import 'package:projects/model/login_request.dart';
//import 'package:projects/Admin/adminDashboard.dart';
//import 'package:projects/AppBar/app_bar.dart';
import 'package:projects/signup.dart';
import 'package:http/http.dart' as http;
import 'package:form_field_validator/form_field_validator.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String loginMessage = "";
  bool _passwordVisible = true;
  // void initState() {
  //   _passwordVisible = true;
  // }
  var emailText = TextEditingController();
  var passwordText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    //final TextEditingController emailText = TextEditingController();
    //final TextEditingController passwordText = TextEditingController();

    Future signIn(String email, String password) async {
      late LoginRequest data = LoginRequest(emailID: email, password: password);

      var token =
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2OTRjYThlYmRiZTEyOWJlNzhlMjQyOSIsImlhdCI6MTc2MzA5NDk4MywiZXhwIjoxNzY1Njg2OTgzfQ.3w3uLX_YnwNfGPpXvN4hzDllDYKDqkadq3gH_2vUeHo";
      Uri url = Uri.parse(
        "https://backend1.redsling.com/customroutes/custom_model_login/66a7231fe0c7b8415e58e01c",
      );
      var response = await http.post(url, body: data.toJson());
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        setState(() {
          data;
        });
        if ("Admin" == data['role']) {
          Navigator.push(
            // ignore: use_build_context_synchronously
            context,
            MaterialPageRoute(builder: (context) => const Admindashboard()),
          );
          loginMessage = 'Admin Login successfully';
        }
        if ("User" == data['role']) {
          Navigator.push(
            // ignore: use_build_context_synchronously
            context,
            MaterialPageRoute(builder: (context) => const MyHomePage()),
          );
          loginMessage = 'User Login successfully';
        }
      } else {
        print('Error ${response.statusCode}');
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: App_bar(),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 111.0),
                child: Center(
                  child: SizedBox(
                    width: 200,
                    height: 100,
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
              ),
              Text(
                'Login',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Color.fromARGB(255, 7, 62, 108),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              //Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  validator: MultiValidator([
                    RequiredValidator(errorText: "* Required"),
                    EmailValidator(errorText: "Enter valid email id"),
                  ]),
                  controller: emailText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com',
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  top: 15.0,
                  bottom: 0,
                ),
                child: TextFormField(
                  controller: passwordText,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "* Required"),
                    MinLengthValidator(
                      10,
                      errorText: "Password should be atleast 10 characters",
                    ),
                    MaxLengthValidator(
                      10,
                      errorText:
                          "Password should not be greater than 10 characters",
                    ),
                  ]),
                  obscureText: _passwordVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    //alignLabelWithHint: false,
                    // filled: true,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
              ),
              SizedBox(
                // width: double.infinity,
                //height: 65,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          // print('Invalid');
                          String uEmail = emailText.text;
                          String uPassword = passwordText.text;
                          signIn(uEmail, uPassword);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 7, 62, 108),
                        elevation: 5,
                      ),
                      child: Text(
                        'Sign in',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot your login detail?',
                        style: GoogleFonts.poppins(fontSize: 15),
                      ),
                      InkWell(
                        onTap: () {
                          print('Hello');
                        },
                        child: Text(
                          'Get help logging in.',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don`t have an account?',
                        style: GoogleFonts.poppins(fontSize: 15),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
