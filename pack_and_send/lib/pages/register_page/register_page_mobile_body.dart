import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:pack_and_send/components/my_button.dart';
import 'package:pack_and_send/components/my_textfield.dart';

class RegisterPageMobileScaffold extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final void Function()? onTap;

  RegisterPageMobileScaffold({super.key, required this.onTap});

  void register() {}

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.local_shipping_rounded,
                size: 60, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 50),
            //welcome message
            PlatformText("Let's create an account for you.",
                style: TextStyle(color: Colors.grey[700])),
            const SizedBox(height: 25),
            //textfield
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
            ),
            const SizedBox(height: 10),
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _passwordController,
            ),
            const SizedBox(height: 10),
            MyTextField(
              hintText: "Confirm password",
              obscureText: true,
              controller: _confirmPasswordController,
            ),
            //login button
            const SizedBox(height: 25),
            MyButton(
              text: "Register",
              onTap: register,
            ),
            //register now
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlatformText("Already have an account? ",
                    style: TextStyle(color: Colors.grey[700])),
                GestureDetector(
                  onTap: onTap,
                  child: PlatformText(
                    "Login now",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
