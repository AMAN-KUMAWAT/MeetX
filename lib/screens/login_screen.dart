import 'package:flutter/material.dart';
import 'package:project/utils/colors.dart';
import 'package:project/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _textEditingController1 = TextEditingController();
  final TextEditingController _textEditingController2 = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _textEditingController1.dispose();
    _textEditingController2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Optional: Ensures content isn’t obscured by system UI
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50), // Add some top padding
                // SVG image
                Image(
                  image:
                      const AssetImage("assets/images/L-removebg-preview.png"),
                  color: Colors.white,
                  height: 250,
                ),
                // Text field input for email
                TextFieldInput(
                  textEditingController: _textEditingController1,
                  hintText: "Enter your e-mail",
                  textdInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                // Text field input for password
                TextFieldInput(
                  textEditingController: _textEditingController2,
                  hintText: "Enter Password",
                  textdInputType: TextInputType.text,
                  isPass: true,
                ),
                const SizedBox(height: 20),
                // Login button
                InkWell(
                  onTap: () {},
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
                      'Log-in',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // Sign-up row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text('Don\'t have an Account?'),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          'Sign-up',
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
                const SizedBox(height: 20), // Add some bottom padding
              ],
            ),
          ),
        ),
      ),
    );
  }
}
