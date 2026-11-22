import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Grid 2x2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tugas Grid 2x2'),
        ),
        body: Center(
          // Gabungan Column dan Row untuk membuat Grid 2x2
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Baris Pertama (2 Kotak Atas)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakWarna(
                    warna: Colors.blue,
                    label: 'Biru',
                  ),
                  SizedBox(width: 20),
                  KotakWarna(
                    warna: Colors.green,
                    label: 'Hijau',
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Baris Kedua (2 Kotak Bawah)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakWarna(
                    warna: Colors.orange,
                    label: 'Oranye',
                  ),
                  SizedBox(width: 20),
                  KotakWarna(
                    warna: Colors.purple,
                    label: 'Ungu',
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

// Custom Widget KotakWarna dengan Icon Hati Merah & Text di bawahnya
class KotakWarna extends StatelessWidget {
  final Color warna;
  final String label;

  const KotakWarna({
    required this.warna,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        color: warna,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}