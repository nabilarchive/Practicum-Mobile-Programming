import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Cuaca Malang',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Text(
                'Malang',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.normal,
                ),
              ),

              // Suhu Utama
              Text(
                '25°',
                style: TextStyle(
                  fontSize: 90,
                  fontWeight: FontWeight.w300,
                ),
              ),

           
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                    children: [
                      Text('Minggu', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      Icon(Icons.sunny, size: 36),
                      SizedBox(height: 10),
                      Text('20°C', style: TextStyle(fontSize: 14)),
                    ],
                  ),


                  Column(
                    children: [
                      Text('Senin', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      Icon(Icons.cloudy_snowing, size: 36),
                      SizedBox(height: 10),
                      Text('23°C', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Selasa', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      Icon(Icons.cloud, size: 36),
                      SizedBox(height: 10),
                      Text('22°C', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}