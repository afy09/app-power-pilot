import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    const Color(0xFFFACDAE),
                    const Color(0xFFED7D31),
                  ],
                  begin: Alignment(0, 2.0),
                  end: Alignment(0.5, 0.5),
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 8, right: 8, bottom: 20),
                  child: Column(
                    children: [
                      const Text(
                        "Leaderboard",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFE927)
                                        .withOpacity(0.7),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        bottomLeft: Radius.circular(12)),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Sapirun",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF6C4F16)),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          "2138",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF6C4F16)),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          "saphira@gmail.com",
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xFF6C4F16)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -50.0,
                                  left: 0,
                                  right: 0,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://placehold.co/600x400.png",
                                      imageBuilder: (context, imageProvider) =>
                                          CircleAvatar(
                                        radius: 40,
                                        backgroundImage: imageProvider,
                                        backgroundColor: Colors.transparent,
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color(0xFFFFE500),
                                                  width: 3.0,
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            Positioned(
                                              bottom: -10,
                                              left: 0,
                                              right: 0,
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Transform.rotate(
                                                  angle: pi / 4,
                                                  child: Container(
                                                    width: 25,
                                                    height: 25,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFFFAA00),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Transform.rotate(
                                                      angle: -pi / 4,
                                                      child: Text(
                                                        '3',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.person),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFE500),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30)),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 30.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Fathin",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF34A853)),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          "2138",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF34A853)),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          "saphira@gmail.com",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xFF34A853)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -70.0,
                                  left: 0,
                                  right: 0,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://placehold.co/600x400.png",
                                      imageBuilder: (context, imageProvider) =>
                                          CircleAvatar(
                                        radius: 60,
                                        backgroundImage: imageProvider,
                                        backgroundColor: Colors.transparent,
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color(0xFFFFE500),
                                                  width: 3.0,
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            Positioned(
                                              bottom: -10,
                                              left: 0,
                                              right: 0,
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Transform.rotate(
                                                  angle: pi / 4,
                                                  child: Container(
                                                    width: 30,
                                                    height: 30,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFFFAA00),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Transform.rotate(
                                                      angle: -pi / 4,
                                                      child: Text(
                                                        '1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: -55,
                                              left: 0,
                                              right: 0,
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Image.asset(
                                                  'images/crown.png',
                                                  width: 70,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.person),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFE927)
                                        .withOpacity(0.7),
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(12),
                                        bottomRight: Radius.circular(12)),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 20.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Mawardi",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF6C4F16)),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          "2364",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF6C4F16)),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          "mawardi@gmail.com",
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xFF6C4F16)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -50.0,
                                  left: 0,
                                  right: 0,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://placehold.co/600x400.png",
                                      imageBuilder: (context, imageProvider) =>
                                          CircleAvatar(
                                        radius: 40,
                                        backgroundImage: imageProvider,
                                        backgroundColor: Colors.transparent,
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color(0xFFFFE500),
                                                  width: 3.0,
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            Positioned(
                                              bottom: -10,
                                              left: 0,
                                              right: 0,
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Transform.rotate(
                                                  angle: pi / 4,
                                                  child: Container(
                                                    width: 25,
                                                    height: 25,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFFFAA00),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Transform.rotate(
                                                      angle: -pi / 4,
                                                      child: Text(
                                                        '2',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.person),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
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
                            "No",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF151005)),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "u",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF151005)),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "u",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF151005)),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "u",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF151005)),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "u",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF151005)),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Poin",
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
                        4, "", "Amel", 1600),
                    _listTile(
                        5, "https://placehold.co/600x400.png", "Rizki", 1500),
                    _listTile(
                        6, "https://placehold.co/600x400.png", "Ali", 1400),
                    _listTile(
                        7, "https://placehold.co/600x400.png", "Nurul", 1300),
                    _listTile(
                        8, "https://placehold.co/600x400.png", "Nabila", 1300),
                    _listTile(9, "https://placehold.co/600x400.png", "Renggika",
                        1300),
                    _listTile(
                        10, "https://placehold.co/600x400.png", "Gatau", 1300),
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
