import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tukar Point'),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Color(0xFFD08413)),
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.monetization_on,
                      color: Colors.yellow,
                      size: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1456 Pts',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            'My reward points',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )
                        ]),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doorprize',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFDB7B1A)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: [
                    _buildRewardCard(
                        onTap: () {
                          context.push('/reward-detail');
                        },
                        imageUrl:
                            'https://media.wired.com/photos/6332360740fe1e8870aa3bc0/master/pass/iPhone-14-Review-Gear.jpg',
                        title: 'iPhone 14',
                        point: 2345),
                    _buildRewardCard(
                        onTap: () {
                          context.push('/reward-detail');
                        },
                        imageUrl:
                            'https://images.samsung.com/in/smartphones/galaxy-z-flip4/buy/Flip4_Carousel_ProductKV_PinkGold_MO.jpg',
                        title: 'Samsung Z Flip',
                        point: 2345),
                    _buildRewardCard(
                        onTap: () {
                          context.push('/reward-detail');
                        },
                        imageUrl:
                            'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/118/MTA-143787898/brd-44261_xiaomi-smart-tv-a-43-inchi-fhd-google-tv-new_full02-39d894df.jpg',
                        title: 'Smart TV',
                        point: 2345),
                    _buildRewardCard(
                        onTap: () {
                          context.push('/reward-detail');
                        },
                        imageUrl:
                            'https://images.philips.com/is/image/philipsconsumer/327799c16ab44a988316b0bf007b71d9?\$jpglarge\$&wid=420&hei=360',
                        title: 'Radio',
                        point: 2345),
                  ],
                ),
              ),
            )
          ],
        ));
  }

  _buildRewardCard(
      {required Function() onTap,
      required String imageUrl,
      required String title,
      required int point}) {
    return InkWell(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: imageUrl,
                    placeholder: (context, url) => Container(
                      width: 10,
                      height: 10,
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          width: double.infinity,
                          color: Color(0xFF767374).withOpacity(0.5),
                          padding: EdgeInsets.all(8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '$point Pts',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
