import 'package:flutter/material.dart';

void main() {
  runApp(IntroApp());
}
class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hellow, World!',
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Welcome to Flutter',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
         //   Image.asset('assets/images/flutter.png'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                width: 200,
                height: 200,
                child:Image.asset(
                    'assests/images/flutter.png',
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
                onPressed: (){
               showModalBottomSheet(
                 backgroundColor: Colors.green,
                   context: context,
                   builder: (context){
                     return SizedBox(
                       height: 80,
                       width: double.infinity,
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(16.0),
                             child: Text('Button Pressed!',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 18,
                               ),
                             ),
                           ),
                                ],
                        ),
                    );
                   },
               );
              },
                child: Text('Press Me')),
          ],
        ),
      ),
    );
  }
}


