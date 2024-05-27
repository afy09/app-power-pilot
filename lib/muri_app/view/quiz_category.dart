import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:museum_polri/muri_app/view/component/category_card.dart';

List<Map<String, String>> categories = [
  {
    'kategori': 'senjata',
    'asset': 'images/senjata-no-bg.png',
    'overview':
        'Senjata adalah alat yang digunakan untuk melawan musuh. Senjata dapat berupa alat tajam, alat tembak, alat peledak, dan lain-lain.',
    'instruction':
        'Pilihlah jawaban yang benar dari pertanyaan yang diberikan. Jawaban yang benar akan memberikan poin lebih banyak.',
  },
  {
    'kategori': 'Cyber',
    'asset': 'images/cyber-no-bg.png',
    'overview':
        'Cyber adalah dunia maya yang terhubung dengan internet. Cyber dapat berupa website, aplikasi, dan lain-lain.',
    'instruction':
        'Pilihlah jawaban yang benar dari pertanyaan yang diberikan. Jawaban yang benar akan memberikan poin lebih banyak.',
  },
  {
    'kategori': 'Teroris',
    'asset': 'images/teroris-no-bg.png',
    'overview':
        'Teroris adalah orang yang melakukan tindakan kekerasan untuk mencapai tujuan tertentu. Teroris dapat berupa kelompok atau individu.',
    'instruction':
        'Pilihlah jawaban yang benar dari pertanyaan yang diberikan. Jawaban yang benar akan memberikan poin lebih banyak.',
  },
  {
    'kategori': 'Sejarah',
    'asset': 'images/sejarah-no-bg.png',
    'overview':
        'Sejarah adalah catatan masa lalu yang terjadi di dunia. Sejarah dapat berupa peristiwa, tokoh, dan lain-lain.',
    'instruction':
        'Pilihlah jawaban yang benar dari pertanyaan yang diberikan. Jawaban yang benar akan memberikan poin lebih banyak.',
  },
  {
    'kategori': 'Peristiwa',
    'asset': 'images/peristiwa-no-bg.png',
    'overview':
        'Peristiwa adalah kejadian yang terjadi di dunia. Peristiwa dapat berupa bencana alam, perang, dan lain-lain.',
    'instruction':
        'Pilihlah jawaban yang benar dari pertanyaan yang diberikan. Jawaban yang benar akan memberikan poin lebih banyak.',
  },
  {
    'kategori': 'Atribut',
    'asset': 'images/atribut-no-bg.png',
    'overview':
        'Atribut adalah perlengkapan yang digunakan oleh seseorang. Atribut dapat berupa seragam, tanda pengenal, dan lain-lain.',
    'instruction':
        'Pilihlah jawaban yang benar dari pertanyaan yang diberikan. Jawaban yang benar akan memberikan poin lebih banyak.',
  },
];

class QuizCategoryScreen extends StatelessWidget {
  const QuizCategoryScreen({super.key});

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
                  "Quiz",
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
                  const Text(
                    "Silahkan",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF34312F)),
                  ),
                  const Text(
                    "Pilih Kategori",
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
                              name: "Senjata",
                              asset: "images/senjata.png",
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
                                            context.push('/quiz');
                                          });
                                    });
                              }),
                          CategoryCard(
                              name: "Cyber",
                              asset: "images/cyber.png",
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
                              name: "Teroris",
                              asset: "images/teroris.png",
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
                              name: "Sejarah",
                              asset: "images/sejarah.png",
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
                              name: "Peristiwa",
                              asset: "images/peristiwa.png",
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
                              name: "Atribut",
                              asset: "images/atribut.png",
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
          const SizedBox(
            height: 10,
          ),
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
      padding: const EdgeInsets.only(top: 10, bottom: 20, left: 15, right: 15),
      height: MediaQuery.of(context).size.height * 0.8,
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
            height: 5,
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
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Overview',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF34312F),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                categories['overview']!,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF716D69),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Instruction',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF34312F),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                categories['instruction']!,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF716D69),
                ),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: onStart,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFED7D31),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Start Game',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )),
        ],
      ),
    );
  }
}
