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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Export',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Export listrik adalah proses di mana suatu negara atau wilayah menghasilkan listrik dalam jumlah yang cukup untuk memenuhi kebutuhan lokalnya dan memiliki kelebihan pasokan yang dapat diekspor ke negara atau wilayah lain. Ini bisa terjadi ketika suatu negara memiliki infrastruktur listrik yang sangat baik dan produksi energi yang berlimpah, sering kali melalui sumber daya alam seperti tenaga air, tenaga surya, tenaga angin, atau tenaga nuklir.',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
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
                          context.push('/export');
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
