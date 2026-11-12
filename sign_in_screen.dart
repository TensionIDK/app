import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .start,
            children: [
              Text("Email", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              TextFormField(
                style: TextStyle(color: Colors.black),
                controller: _passwordController,
               decoration: InputDecoration(
                hint: Text("Enter your mail..."),
               ),
              ),

              SizedBox(height: 10,),
              Text("Password", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              TextFormField(
                obscureText: true,
                controller: _emailController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hint: Text("Enter your password..."),
                  suffixIcon:Icon(Icons.visibility)
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  
                }, 
                child: Text("Sign In", style: Theme.of(context).textTheme.bodySmall)
                ),
                     SizedBox(height: 20,),
                //  SizedBox(
                //   width: 100,
                //    child: ElevatedButton(
                //                    onPressed: (){}, 
                //                    child: Text("Sign In", style: Theme.of(context).textTheme.bodySmall)
                //                    ),
                //  )
          
            ]

          ),
        ),
      ),
    );
  }
@override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
}