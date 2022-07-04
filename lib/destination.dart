import 'package:flutter/material.dart';

class Destination extends StatefulWidget {
  const Destination({ Key? key }) : super(key: key);

  @override
  State<Destination> createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  @override
  Widget build(BuildContext context) {
        double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Scaffold(
          body: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                BackButton(),
                SizedBox(width: 50,),
                Text('Select destination', style: TextStyle(fontSize:18,fontWeight: FontWeight.bold, color: Colors.black,),)],),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                   children: [
                    Icon(Icons.circle, color: Colors.green,size: 15,),
                    SizedBox(width: 10,),
                     Container(
                       height: screenHeight * 0.07,
                       width: screenWidth * 0.8,
                       child: TextField(
                         enabled: true,
                         decoration: InputDecoration(
                           contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                           border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(0),),
                           hintText: '    Starting Location',
                           fillColor: Colors.blueGrey[95],
                           filled: true
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15),
                 child: Row(
                   children: [
                     GestureDetector(
                      onTap: () {
                        Navigator.pop(context);

                      },
                      child: const Icon(
                        Icons.arrow_downward,
                      ),
                    ),

                    
                   ],
                 ),
               ),
              //  SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(Icons.location_pin, color: Colors.blue,size: 20,),
                      SizedBox(width: 10,),
                      Container(
                        height: screenHeight * 0.07,
                        width: screenWidth * 0.8,
                        child: TextField(
                        
                          enabled: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(0)),
                            hintText: '   Ending Location',
                            
                            fillColor: Colors.blueGrey[95],
                            filled: true 
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],),
        ),
        
      ),
    );
  }
}