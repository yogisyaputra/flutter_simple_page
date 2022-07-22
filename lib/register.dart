import 'package:flutter/material.dart';
import 'package:flutter_simple_page/login.dart';
import 'package:flutter_simple_page/size_config.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({Key? key}) : super(key: key);

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight *0.04),
              Text(
                "Create Account",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Complate your details",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight *0.08,),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Enter your Name",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Icon(Icons.account_box),
                        ),

                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    TextFormField(
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
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    TextFormField(
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
                    )
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
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
                    "Sign Up",
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
                    "Already have an account ? ",
                    style: TextStyle(fontSize: getProportionateScreenWidth(16)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PageLogin(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign In',
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
}
