import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halo, Ali!",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF4F4A45)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.push('/login');
            },
            icon: const Icon(Icons.logout),
          ),
          SizedBox(width: 14),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF1594D7),
                    const Color(0xFF1594D7),
                  ],
                  begin: Alignment(0.5, 2.0),
                  end: Alignment(0.5, 0.5),
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 50, left: 8, right: 8),
                  child: Column(
                    children: [
                      const Text(
                        "Data Pemakaian Listrik",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    //head
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Tgl",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF151005)),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Volt+Ampere+Watt",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF151005)),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Total",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF151005)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    _listTile(
                        4, "https://placehold.co/600x400.png", "67+78+90", 1600),
                    _listTile(
                        5, "https://placehold.co/600x400.png", "67+78+90", 1500),
                    _listTile(
                        6, "https://placehold.co/600x400.png", "67+78+90", 1400),
                    _listTile(
                        7, "https://placehold.co/600x400.png", "67+78+90", 1300),
                    _listTile(
                        8, "https://placehold.co/600x400.png", "67+78+90", 1300),
                    _listTile(
                        9, "https://placehold.co/600x400.png", "67+78+90",
                        1300),
                    _listTile(
                        10, "https://placehold.co/600x400.png", "67+78+90", 1300),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _listTile(int rank, String picture, String user, int point) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                "$rank.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF151005)),
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: CachedNetworkImageProvider(
                    picture,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  user,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF151005)),
                ),
              ]),
            ),
            Expanded(
              flex: 1,
              child: Text(
                "$point",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF151005)),
              ),
            )
          ],
        ),
        Divider(
          color: Color(0xFF151005),
          thickness: 1,
        )
      ],
    );
  }
}
