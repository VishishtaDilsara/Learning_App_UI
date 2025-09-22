import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning_app_ui/components/app_button.dart';
import 'package:learning_app_ui/components/primary_button.dart';
import 'package:learning_app_ui/screens/my_classes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,

        title: Text(
          'LOG IN',
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_rounded, color: Colors.purple),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'Learning App',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Enter Your Login Details to\naccess your account',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.purple),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppButton(
                    size: size,
                    color: Colors.blue,
                    text: 'Facebook',
                    icon: FontAwesomeIcons.facebookF,
                  ),

                  AppButton(
                    size: size,
                    color: Colors.red,
                    text: 'Google',
                    icon: FontAwesomeIcons.googlePlusG,
                  ),
                ],
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  label: Text(
                    'Email',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  label: Text(
                    'Password',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(value: false, onChanged: (val) {}),
                  Text('Remember Me', style: TextStyle(color: Colors.purple)),
                  Spacer(),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              PrimaryButton(
                size: size,
                text: 'Login with your account',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyClasses()),
                  );
                },
              ),
              SizedBox(height: 15),
              RichText(
                text: TextSpan(
                  text: "Don't have an account?  ",
                  style: TextStyle(fontSize: 12, color: Colors.purple),
                  children: [
                    TextSpan(
                      text: 'Create Account',
                      style: TextStyle(
                        color: Colors.blue.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
