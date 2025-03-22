import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project/resources/auth_methods.dart';
import 'package:project/utils/colors.dart';
import 'package:project/widgets/text_field_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() =>
      _SignupScreenState(); // Fixed state class name
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _userNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // Optional, as vertical is default
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40), // Add top padding
                // SVG image
                Image(
                  image:
                      const AssetImage("assets/images/L-removebg-preview.png"),
                  color: Colors.white,
                  height: 200,
                ),
                // Selected widget to show our selected image
                SizedBox(
                  height: 130,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 64,
                        backgroundImage: AssetImage("assets/images/im.png"),
                      ),
                      Positioned(
                        bottom: -10,
                        left: 80,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // TextField input for username
                TextFieldInput(
                  textEditingController: _userNameController,
                  hintText: "User Name",
                  textdInputType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                // Text field input for email
                TextFieldInput(
                  textEditingController: _emailController,
                  hintText: "Enter your e-mail",
                  textdInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                // Text field input for password
                TextFieldInput(
                  textEditingController: _passwordController,
                  hintText: "Enter Password",
                  textdInputType: TextInputType.text,
                  isPass: true,
                ),
                const SizedBox(height: 20),
                // Text field input for bio
                TextFieldInput(
                  textEditingController: _bioController,
                  hintText: "Enter your bio",
                  textdInputType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                // Sign-up button
                InkWell(
                  onTap: () async {
                    String res = await AuthMethods().signUpUser(
                      email: _emailController.text,
                      password: _passwordController.text,
                      userName: _userNameController.text,
                      bio: _bioController.text,
                    );
                    log(res);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: blueColor,
                    ),
                    child: const Text(
                      'Sign-up', // Fixed button text
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // Transition to login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child:
                          const Text('Already have an account?'), // Fixed text
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          'Log-in', // Fixed text
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: blueColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Add bottom padding
              ],
            ),
          ),
        ),
      ),
    );
  }
}
