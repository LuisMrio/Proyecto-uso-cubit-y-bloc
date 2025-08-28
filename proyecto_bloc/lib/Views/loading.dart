import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                CircularProgressIndicator(
                backgroundColor: Colors.black,
                strokeWidth: 8,
                strokeAlign: 8,
                ),

                
              ],
            ),
            SizedBox(height: 40,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10,),
                Text('Loading...', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
              ],
            ),
          ],
        ),
        
      ),
    );
  }
}