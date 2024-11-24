import 'package:expense_tracker/constants/colors.dart';
import 'package:expense_tracker/widgets/appbutton.dart';
import 'package:expense_tracker/widgets/apptext.dart';
import 'package:expense_tracker/widgets/customtextformfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  final _regKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: bgColor,
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: _regKey,
          
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
              
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('Create an account',style: TextStyle(fontSize: 20,color: textColor,)),
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
                CustomTextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Name Mandatory";
                            }

                            return null;
                          },
                          controller: _nameController,
                          hintText: "Name"),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                          type: TextInputType.phone,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Phone Mandatory";
                            }

                            return null;
                          },
                          controller: _phoneController,
                          hintText: "Phone"),
                      const SizedBox(
                        height: 20,
                      ),
                Center(
                  child: AppButton(
                      height: 40,
                      width: 80,
                      color: buttonColor,
                      onTap: () {
                              
                        if(_regKey.currentState!.validate()){}
                        //login logic
                        //get the user data from hive db
                              
                        //redirect the user to home page
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: textColor, fontSize: 17),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      data: "Already have an account?",
                      color: textColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: AppText(
                          data: 'Login',
                          color: textColor,
                        )),
                  ],
                )
              ],
            ),),
            ],
          ),
          
        ),
      )
    );
  }
}