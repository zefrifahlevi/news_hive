import 'package:flutter/material.dart';
import 'package:news_hive/views/login_screen.dart';
import 'package:news_hive/views/splash_screen.dart';
import 'package:news_hive/views/utils/helper.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                "Register",
                style:  TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 14),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Nama Lengkap",
                  labelText: "Username",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person_2_outlined),
                ),
              ),
              SizedBox(height: 14),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Masukan Email",
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email_outlined),
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
              TextFormField(
                obscureText: isObscure,
                decoration: InputDecoration(
                  hintText: "Konfirmasi Password",
                  labelText: "Confirm Password",
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
                  child: Text("Register",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sudah Punya Akun??"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text("Login"),
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