import 'package:expense_tracker/constants/colors.dart';
import 'package:expense_tracker/widgets/appbutton.dart';
import 'package:expense_tracker/widgets/apptext.dart';
import 'package:expense_tracker/widgets/customtextformfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final _loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: _loginKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                validator: (value){

                  if(value!.isEmpty){
                    return 'Email is mandatory';
                  }
                  return null;
                },


                  controller: _emailController, hintText: 'Email'),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                 validator: (value){

                  if(value!.isEmpty){
                    return 'Password is mandatory';
                  }
                  if(value.length<6){
                    return 'Password should be more than 6 characters';
                  }
                  return null;
                },

                  obscureText: true,
                  controller: _passwordController,
                  hintText: 'Password'),
              SizedBox(
                height: 15,
              ),
              AppButton(
                  height: 40,
                  width: 80,
                  color: buttonColor,
                  onTap: () {

                    if(_loginKey.currentState!.validate()){}
                    //login logic
                    //get the user data from hive db

                    //redirect the user to home page
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: textColor, fontSize: 17),
                  )),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    data: "Don't have an account?",
                    color: textColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      child: AppText(
                        data: 'Register',
                        color: textColor,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
