import 'package:flutter/material.dart';
import 'package:listing_app/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final String userName1 = "temp@gmail.com";
  final String password1 = "12345678";
  final String userName2 = "hello@gmail.com";
  final String password2 = "440019";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 47.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 59),
              const Center(
                child: Text(
                  'Login In',
                  style: TextStyle(
                    fontFamily: 'Konkhmer Sleokchher',
                    fontSize: 36,
                    color: Color(0xFF424242),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 352),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xFFEAEAEA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                    border: InputBorder.none,
                    hintText: 'Email ID',
                    hintStyle: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 12,
                      color: Color(0xE0000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xFFEAEAEA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 12,
                      color: Color(0xE0111111),
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: Opacity(
                      opacity: 0.65,
                      child: IconButton(
                        icon: Image.network(
                          'https://dashboard.codeparrot.ai/api/image/Z6V9EcNJMVoCouAr/eye-3.png',
                          width: 25,
                          height: 25,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 39),
              ElevatedButton(
                onPressed: () {
                  if (_emailController.text == userName1 &&
                          _passwordController.text == password1 ||
                      _emailController.text == userName2 &&
                          _passwordController.text == password2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Invalid username or password'),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5D55FF),
                  minimumSize: const Size(295, 54),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
