import 'package:flutter/material.dart';

@Deprecated("Use Fireflutter UI package instead")
class SignUpScreen extends StatelessWidget {
  static const routeName = "/signup";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Sign Up Screen"),
        ],
      ),
    );
  }
}
