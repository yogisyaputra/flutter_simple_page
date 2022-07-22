import 'package:flutter/material.dart';
import 'package:flutter_simple_page/register.dart';
import 'package:flutter_simple_page/size_config.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({Key? key}) : super(key: key);

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {

  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight *0.04),
              Text(
                  "Hallo \nWelcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Sign in with your email and password",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight *0.08,),
              Form(
                  child: Column(
                    children: [
                      formEmail(),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      formPassword(),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: remember,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              setState((){
                                remember = value!;
                              });
                            },
                          ),
                          Text("Remember me"),
                          Spacer(),
                          Text(
                            "Forget Password",
                            style: TextStyle(decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                    ],
                  )
              ),
              SizedBox(
                width: double.infinity,
                height: getProportionateScreenHeight(56),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    primary: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                  onPressed: (){},
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account ? ",
                    style: TextStyle(fontSize: getProportionateScreenWidth(16)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PageRegister(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 16,color: Colors.green),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  TextFormField formEmail(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(20),
          child: Icon(Icons.email),
        ),

      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  TextFormField formPassword(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(20),
          child: Icon(Icons.key),
        ),

      ),
      keyboardType: TextInputType.visiblePassword,
    );
  }
}



