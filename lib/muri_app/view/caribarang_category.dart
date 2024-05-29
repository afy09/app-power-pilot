
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:museum_polri/muri_app/view/component/category_card.dart';

List<Map<String, String>> categories = [
  {
    'kategori': 'Januari',
    'asset': 'images/history.png',
    'Pemakaian':
    '340.2 Kwh',
    'Total':
    'Rp. 320.000',
  },
  {
    'kategori': 'Februari',
    'asset': 'images/history.png',
    'Pemakaian':
    '340.2 Kwh',
    'Total':
    'Rp. 320.000',
  },
  {
    'kategori': 'Maret',
    'asset': 'images/history.png',
    'Pemakaian':
    '340.2 Kwh',
    'Total':
    'Rp. 320.000',
  },
  {
    'kategori': 'April',
    'asset': 'images/history.png',
    'Pemakaian':
    '340.2 Kwh',
    'Total':
    'Rp. 320.000',
  },
  {
    'kategori': 'Mei',
    'asset': 'images/history.png',
    'Pemakaian':
    '340.2 Kwh',
    'Total':
    'Rp. 320.000',
  },
  {
    'kategori': 'Juni',
    'asset': 'images/history.png',
    'Pemakaian':
    '340.2 Kwh',
    'Total':
    'Rp. 320.000',
  },
];

class CariBarangCategoryScreen extends StatelessWidget {
  const CariBarangCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: AppBar(
                automaticallyImplyLeading: true,
                title: const Text(
                  "Riwayat Pemakaian",
                  style: TextStyle(
                      color: Color(0xFF34312F),
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 30, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const Text(
                  //   "Silahkan",
                  //   style: TextStyle(
                  //       fontSize: 32,
                  //       fontWeight: FontWeight.w600,
                  //       color: Color(0xFF34312F)),
                  // ),
                  const Text(
                    "Tahun 2024",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF34312F)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Wrap(
                    runSpacing: 20,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryCard(
                              name: "Januari",
                              asset: "images/history-bg.png",
                              isLeft: true,
                              onClick: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) {
                                      return _bottomSheet(
                                          context: context,
                                          categories: categories[0],
                                          onStart: () {
                                            context.push('/cari-barang');
                                          });
                                    });
                              }),
                          CategoryCard(
                              name: "Februari",
                              asset: "images/history-bg.png",
                              isLeft: false,
                              onClick: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) {
                                      return _bottomSheet(
                                          context: context,
                                          categories: categories[1],
                                          onStart: () {});
                                    });
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryCard(
                              name: "Maret",
                              asset: "images/history-bg.png",
                              isLeft: true,
                              onClick: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) {
                                      return _bottomSheet(
                                          context: context,
                                          categories: categories[2],
                                          onStart: () {});
                                    });
                              }),
                          CategoryCard(
                              name: "April",
                              asset: "images/history-bg.png",
                              isLeft: false,
                              onClick: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) {
                                      return _bottomSheet(
                                          context: context,
                                          categories: categories[3],
                                          onStart: () {});
                                    });
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryCard(
                              name: "Mei",
                              asset: "images/history-bg.png",
                              isLeft: true,
                              onClick: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) {
                                      return _bottomSheet(
                                          context: context,
                                          categories: categories[4],
                                          onStart: () {});
                                    });
                              }),
                          CategoryCard(
                              name: "Juni",
                              asset: "images/history-bg.png",
                              isLeft: false,
                              onClick: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) {
                                      return _bottomSheet(
                                          context: context,
                                          categories: categories[5],
                                          onStart: () {});
                                    });
                              }),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _quiz(BuildContext context, String name, String asset,
      void Function() onClick) {
    return AnimatedOpacity(
      opacity: 1.0,
      duration: const Duration(milliseconds: 2000),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onClick,
            child: Container(
              width: MediaQuery.of(context).size.width / 2 - 40,
              height: 170,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF2B3F6C).withOpacity(0.8),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(asset),
                  )),
            ),
          ),
          // const SizedBox(
          //   height: 3,
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF34312F)),
            ),
          )
        ],
      ),
    );
  }

  _bottomSheet(
      {required BuildContext context,
        required Map<String, String> categories,
        required void Function() onStart}) {
    return Container(
      width: double.infinity,
      // padding: const EdgeInsets.only(top: 3, bottom: 5, left: 15, right: 15),
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
        color: Color(0xFFE0DDDA),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 2,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF222227)),
          ),
          Column(
            children: [
              Image.asset(categories['asset']!,
                  width: 200, height: 200, fit: BoxFit.contain),
              Text(
                categories['kategori']!,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8A837E),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              Text(
                'Pemakaian',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF34312F),
                ),
              ),
              Text(
                categories['Pemakaian']!,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF716D69),
                ),
              ),

              const SizedBox(
                height: 10,
              ),


              Text(
                'Total',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF34312F),
                ),
              ),
              Text(
                categories['Total']!,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF716D69),
                ),
              ),
            ],
          ),


          Column(
            crossAxisAlignment: CrossAxisAlignment.center,


          ),

        ],
      ),
    );
  }
}
