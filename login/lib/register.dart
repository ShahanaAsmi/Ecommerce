import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 240),
                    child: Text(
                      'Register',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 156),
                    child: Text('\n Please Login to your account'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Name'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Mobile Number'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Confirm Password'),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Register')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?'),
              TextButton(onPressed: () {}, child: const Text('Login'))
            ],
          )
        ],
      ),
    );
  }
}
