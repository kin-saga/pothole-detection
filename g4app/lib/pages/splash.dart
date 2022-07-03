import 'package:flutter/material.dart';
import 'package:g4app/pages/login.dart';
// import 'package:http/http.dart';

class splash extends StatefulWidget {
  const splash({ Key? key }) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()));

    },);
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(6.0,3.0, 6.0,0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              
              child:ClipRRect(
                borderRadius:BorderRadius.circular(200),
                child:Image.asset('assets/logo.png',
                width: 170,
                height: 170,),
              
              ),

          ),
          SizedBox(height: 100,),
          Container(
            child:Text('G4 App',
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 30),
            ),

          ),
          SizedBox(height: 10,),
          const SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Text("Welcome to Ghana's Premium Intelligence road classification App"
                ),
              ),
            ],
          ),
          ],
        ),
      ),
      
    );
  }
}