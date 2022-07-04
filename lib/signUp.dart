import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _firstcontroller = TextEditingController();
  TextEditingController _lastcontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();


  final _formKey = GlobalKey<FormState>();
  bool _agreedToTOS = true;


  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.maybeOf(context)!.size;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          key: _formKey,
          children: [
            Image.asset(
              'assets/launch.png',
              height: 180,
              width: 180,
            ),

            const SizedBox(height: 30,),

            const Text(
              "Sign Up",
            ),

            const SizedBox(height: 20.0,),

            Container(
              padding: const EdgeInsets.all(10),
              // width: screenSize.width*0.7,
              child: TextFormField(
                controller: _firstcontroller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  prefixIcon: Icon(Icons.people),
                  labelText: "First Name",
                  border: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Nickname is required';
                  }
                },
              ),
            ),

            const SizedBox(height: 20.0,),

            Container(
              padding: const EdgeInsets.all(10),
              // width: screenSize.width*0.7,
              child: TextField(
                controller: _lastcontroller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  prefixIcon: Icon(Icons.people),
                  labelText: "Last Name",
                  border: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20.0,),

            Container(
              padding: const EdgeInsets.all(10),
              // width: screenSize.width*0.7,
              child: TextField(
                controller: _emailcontroller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  prefixIcon: Icon(Icons.people),
                  labelText: "Email",
                  border: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20.0,),

            Container(
              padding: const EdgeInsets.all(10),
              // width: screenSize.width*0.7,
              child: TextField(
                controller: _passwordcontroller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  prefixIcon: Icon(Icons.people),
                  labelText: "Password",
                  border: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),


            Center(
              child: Container(
                width: 150,
                height: 60,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    // print(nameController.text);
                    // print(passwordController.text);
                  },
                )
              ),
            )


          ],
        
        ),
      ),
    );

  }
}



