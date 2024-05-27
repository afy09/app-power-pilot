import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RewardDetailScreen extends StatelessWidget {
  const RewardDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                CachedNetworkImage(
                  imageUrl:
                      'https://images.philips.com/is/image/philipsconsumer/327799c16ab44a988316b0bf007b71d9?\$jpglarge\$&wid=420&hei=360',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  child: InkWell(
                    onTap: () => context.pop(),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(50)),
                      child: Align(
                          alignment: Alignment.center,
                          child: Icon(Icons.arrow_back_ios_new,
                              color: Colors.white)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: Offset(0, -3),
                      blurRadius: 5)
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Radio internet',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '2345 point',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Radio internet. Ribuan stasiun radio di ujung jari Anda Musik. Kata terucap. Kegembiraan sesungguhnya. Radio internet ini adalah tiket Anda ke ribuan stasiun global yang menyiarkan berbagai program. Penyetel radio digital memberikan penerimaan sejenih kristal dan Anda dapat mengatur sampai 20 prasetel untuk stasiun internet, DAB, atau FM favorit Anda',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Center(
                      child: Container(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFFED7D31),
                          ),
                          foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {
                          context.push('/order');
                        },
                        child: Text(
                          'Tukar Point',
                          style: TextStyle(fontSize: 20),
                        )),
                  ))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
