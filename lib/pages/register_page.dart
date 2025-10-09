
import 'package:chatapp/components/my_button.dart';
import 'package:chatapp/components/my_textfield.dart';
import 'package:chatapp/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget{
  final void Function()? onTap;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  RegisterPage({super.key, this.onTap});

  // register method
  void register(BuildContext context) async{
    // get auth service
    final _auth = AuthService();

    // passwords match -> create user
    if(_passwordController.text == _confirmPasswordController.text){
      try{
        await _auth.signUpWithEmailPassword(
          _emailController.text, 
          _passwordController.text
        );
      }catch(e){
        showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        )
      );
      }
    }
    // passwords dont match -> tell user to fix
    else{
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text("Password don't match"),
        )
      );
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
        
            const SizedBox(height: 50),
            // welcome back message
            Text(
              "Let's create an account for you",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16
              ),
            ),

            const SizedBox(height: 25),
        
            // email textfield
            MyTextfield(hintText: "Email",obscureText: false,controller: _emailController),
        
            const SizedBox(height: 10),

            // pw textfield
            MyTextfield(hintText: "Password",obscureText: true,controller: _passwordController),

            const SizedBox(height: 10),

            MyTextfield(hintText: "Confirm Password",obscureText: true,controller: _confirmPasswordController),


            const SizedBox(height: 25),

            // login button
            MyButton(text: "Register",onTap: () => register(context)),

            const SizedBox(height: 25),

            // register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary
                  ),
                ),
                const SizedBox(width:10),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary
                    ),
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}