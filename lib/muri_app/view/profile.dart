import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      context.push('/edit-profile');
                    },
                    icon: Icon(Icons.edit_square),
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: CachedNetworkImageProvider(
                  "https://placehold.co/600x400.png",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    "Selamat Datang",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                  Text(
                    "Faiq Fathin!",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFED7D31),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'images/piala.png',
                            width: 70,
                          ),
                          Column(
                            children: [
                              Text(
                                "05",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 40,
                                    color: Colors.white),
                              ),
                              Text(
                                "Soal",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFED7D31),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'images/piala.png',
                              width: 70,
                            ),
                            Column(
                              children: [
                                Text(
                                  "05",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 40,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Soal",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ],
                            )
                          ]),
                    ),
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
