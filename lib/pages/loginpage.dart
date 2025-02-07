import 'package:flutter/material.dart';
import 'package:listing_app/pages/homepage.dart';

class LoginPage extends StatelessWidget {
  // const LoginScreen({Key? key}) : super(key: key);

  final formkey = GlobalKey<FormState>();

  String userName1 = "jettinsha@gmail.com";
  String password1 = "12345678";
  String userName2 = "Sekai-Ichi@gmail.com";
  String password2 = "440019";
  //get string => null;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: formkey,
        child: Column(
          children: [
            Image.asset("assets/images/wall.jpeg"),
            // SizedBox(height: 20,),
            // Text("Welcome", style: TextStyle(fontSize: 30, color: Colors.white),),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter username",
                        label: Text("Username"),
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value != userName1 && value != userName2) {
                        return "Enter valid username";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password",
                        label: Text("Password"),
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value != password1 && value != password2) {
                        return "Enter valid password";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(minimumSize: Size(110, 35)),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      }
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
