import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _namaController =
      TextEditingController(text: 'Assyifa Sayyidina Ali');
  final TextEditingController _emailController =
      TextEditingController(text: 'Assyifaaali@gmail.com');
  final TextEditingController _telpController =
      TextEditingController(text: '089531177777');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'informasi Pribadi',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Selesai',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )),
            ),
            Image.asset(
              'images/icon.png',
              width: 70,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Edit Foto Profil',
                  style: TextStyle(color: Colors.black),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      TextField(
                        controller: _namaController,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      TextField(
                        controller: _emailController,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'No. Telp',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      TextField(
                        controller: _telpController,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
