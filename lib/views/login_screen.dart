import 'package:flutter/material.dart';
import 'package:news_hive/views/register_screen.dart';
import 'package:news_hive/views/splash_screen.dart';
import 'package:news_hive/views/utils/helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Login",
                style:  TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 14),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Masukan Username",
                  labelText: "Username",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 14),
              TextFormField(
                obscureText: isObscure,
                decoration: InputDecoration(
                  hintText: "Masukan Password",
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    }, 
                    icon: isObscure ? Icon(Icons.visibility) : Icon(Icons.visibility_off))
                ),
              ),
              SizedBox(height: 14),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {}, 
                  child: Text("Login",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum Punya Akun??"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                    },
                    child: Text("Register"),
                    ),
                ],
              )
            ],
          ),
          ),
      ),
    );
  }
}