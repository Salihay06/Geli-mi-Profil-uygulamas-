import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfil());
}

class MyProfil extends StatelessWidget {
  const MyProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(centerTitle: true, title: const Text('Profil Sayfası')),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    'https://previews.123rf.com/images/ornitopter/ornitopter1510/ornitopter151000168/46712113-lightning-letter-s.jpg',
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Muhammed Salih Ay',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Flutter Geliştiricisi',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Mesaj Gönder'),
                    ),
                    SizedBox(width: 16),
                    ElevatedButton(onPressed: () {}, child: Text('Takip Et')),
                  ],
                ),
                const SizedBox(height: 24),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                '1.5k',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Takipçi'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                '2.5k',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Takip'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                '150',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Gönderi'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.language),
                      onPressed: () {
                        'Mail gönderilebilir';
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.camera_alt),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Hakkımda',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Flutter ile mobil uygulama geliştirmeyi seviyorum. Yeni teknolojileri öğrenmek en büyük hobim.',
                          ),
                          SizedBox(height: 12),
                          ListTile(
                            leading: Icon(Icons.location_on),
                            title: Text('İstanbul, Türkiye'),
                          ),
                          ListTile(
                            leading: Icon(Icons.code),
                            title: Text('Kullandığım Teknolojiler: Flutter, Dart, Firebase, Git'),
                          ),
                          ListTile(
                            leading: Icon(Icons.lightbulb),
                            title: Text('Hobiler: Kod yazmak, Futbol oynamak, kitap okumak'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    
  }
}