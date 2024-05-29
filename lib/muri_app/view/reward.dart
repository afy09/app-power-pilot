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
          title: Text('Tambah Saldo'),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Color(0xFF1594D7)),
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.monetization_on,
                      color: Colors.white,
                      size: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //     'Saldo Saat ini',
                          //     style: TextStyle(fontSize: 15, color: Colors.white),
                          //   ),
                          Text(
                            'Rp, 270.000',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          //
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
                    'Metode Pembayaran',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1594D7)),
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
                          context.push('/order');
                        },

                        imageUrl:
                            'https://i.pinimg.com/564x/d4/b9/f5/d4b9f5e496dafa4fe2138980446f3dd1.jpg',
                        title: 'BRI',
                        point: 2345),
                    _buildRewardCard(
                        onTap: () {
                          context.push('/order');
                        },
                        imageUrl:
                            'https://brandslogos.com/wp-content/uploads/images/large/bank-mandiri-logo.png',
                        title: 'Mandiri',
                        point: 2345),
                    _buildRewardCard(
                        onTap: () {
                          context.push('/order');
                        },
                        imageUrl:
                            'https://baradesain.wordpress.com/wp-content/uploads/2010/10/bca-bank-logo_logo-bagus-03.jpg?w=810',
                        title: 'BCA',
                        point: 2345),
                    _buildRewardCard(
                        onTap: () {
                          context.push('/order');
                        },
                        imageUrl:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDKaJB1e10Qh1XS6RVFA5EaQXaoBMLb0S3l1ytS6QFw9WBYYJBwcijkvQtuOC4XdMjfiY&usqp=CAU',
                        title: 'CIMB Niaga',
                        point: 2345),
                    _buildRewardCard(
                        onTap: () {
                          context.push('/order');
                        },
                        imageUrl:
                        'https://p16-capcut-sign-va.ibyteimg.com/tos-alisg-v-643f9f/oMBEWABt4DNfpAtQB3uHIcTiAB0iEXy2AIwBKT~tplv-nhvfeczskr-1:250:0.webp?lk3s=44acef4b&x-expires=1740347514&x-signature=LBHZqIoCLWNvKVHmoymClndj8Po%3D',
                        title: 'Alfamart',
                        point: 2345),
                    _buildRewardCard(
                        onTap: () {
                          context.push('/order');
                        },
                        imageUrl:
                        'https://cdn.kibrispdr.org/data/752/logo-indomaret-hd-12.jpg',
                        title: 'Indomart',
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
                              // Text(
                              //   '$point Pts',
                              //   style: TextStyle(
                              //     color: Colors.white,
                              //     fontSize: 10,
                              //   ),
                              // ),
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
