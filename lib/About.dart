import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Kami'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 32.0),
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/logo.png'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Real Estate Company',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Kami adalah perusahaan real estate yang berkomitmen untuk menyediakan properti berkualitas tinggi kepada klien kami. Dengan pengalaman bertahun-tahun dalam industri ini, kami telah berhasil membantu banyak individu dan keluarga dalam mencari hunian impian mereka.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika tombol di sini
              },
              child: Text(
                'Hubungi Kami',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 24.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
