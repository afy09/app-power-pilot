import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class CariBarangScreen extends StatefulWidget {
  const CariBarangScreen({Key? key}) : super(key: key);

  @override
  State<CariBarangScreen> createState() => _CariBarangScreenState();
}

class _CariBarangScreenState extends State<CariBarangScreen> {
  List<Map<String, Object>> questions = [
    {
      'questionText': 'Question 1',
      'answers': [
        {'text': 'Answer 1', 'correct': false},
        {'text': 'Answer 2', 'correct': true},
        {'text': 'Answer 3', 'correct': false},
        {'text': 'Answer 4', 'correct': false},
      ],
    },
    {
      'questionText': 'Question 2',
      'answers': [
        {'text': 'Answer 1', 'correct': false},
        {'text': 'Answer 2', 'correct': true},
        {'text': 'Answer 3', 'correct': false},
        {'text': 'Answer 4', 'correct': false},
      ],
    },
    {
      'questionText': 'Question 3',
      'answers': [
        {'text': 'Answer 1', 'correct': false},
        {'text': 'Answer 2', 'correct': true},
        {'text': 'Answer 3', 'correct': false},
        {'text': 'Answer 4', 'correct': false},
      ],
    },
    // Add more questions as needed
  ];

  int questionIndex = 0;
  int score = 0;

  void answerQuestion(bool isCorrect) {
    if (isCorrect) {
      setState(() {
        score++;
      });
    }
    setState(() {
      questionIndex++;
    });
  }

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  void _onQRViewCreated(QRViewController controller) {
    controller.scannedDataStream.listen((scanData) {
      controller.pauseCamera();
      Navigator.pop(context, scanData.code);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [
              Color(0xFF9DE6E9),
              Color(0xFF32CBD1),
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pertanyaan',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '1 dari 5',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/question-mark.png'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Color(0xFF1CC8CE),
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 40),
                            decoration: BoxDecoration(
                              color: Color(0xFF4B4B4B).withOpacity(0.8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Aku merupakan , alat yang bisa menyedot data dari ponsel, meski data itu sudah terhapus sebelumnya. Seampuh apa kemampuan alat ini menyingkap data dalam ponsel",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(
                                    0xFF09A2A8), // Ganti dengan warna background yang Anda inginkan
                                borderRadius: BorderRadius.circular(
                                    50), // Ganti dengan radius border yang Anda inginkan
                              ),
                              child: IconButton(
                                onPressed: () async {
                                  String barcodeScanRes = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => QRView(
                                        key: qrKey,
                                        onQRViewCreated: _onQRViewCreated,
                                        overlay: QrScannerOverlayShape(
                                          borderColor: Colors.orange,
                                          borderRadius: 10,
                                          borderLength: 30,
                                          borderWidth: 10,
                                          cutOutSize: 300,
                                        ),
                                      ),
                                    ),
                                  );
                                  print(barcodeScanRes);
                                },
                                icon: Icon(
                                  Icons.qr_code_scanner,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),
                            Text(
                              "Scan",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF21777A)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFFFFFFF)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(0xFF474646),
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Atur radius sesuai kebutuhan
                                ),
                              ),
                            ),
                            child: Text('Next')),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(
                        0xFF21777A), // Ganti dengan warna background yang Anda inginkan
                    borderRadius: BorderRadius.circular(
                        15), // Ganti dengan radius border yang Anda inginkan
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Quiz'),
  //     ),
  //     body: questionIndex < questions.length
  //         ? Column(
  //             children: [
  //               Text(
  //                 questions[questionIndex]['questionText'] as String,
  //                 style: TextStyle(fontSize: 18),
  //               ),
  //               ...(questions[questionIndex]['answers']
  //                       as List<Map<String, Object>>)
  //                   .map((answer) {
  //                 return ElevatedButton(
  //                   child: Text(answer['text'] as String),
  //                   onPressed: () => answerQuestion(answer['correct'] as bool),
  //                 );
  //               }).toList(),
  //             ],
  //           )
  //         : Center(
  //             child: Text('You have completed the quiz! Your score is $score.'),
  //           ),
  //   );
  // }
}

class AnswerOption extends StatefulWidget {
  final String text;
  final bool isCorrect;
  const AnswerOption({super.key, required this.text, required this.isCorrect});

  @override
  State<AnswerOption> createState() => _AnswerOptionState();
}

class _AnswerOptionState extends State<AnswerOption> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        selected = !selected;
      }),
      child: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF483E3E)),
                ),
              ),
            ),
            if (selected) widget.isCorrect ? _correct() : _wrong(),
          ],
        ),
      ),
    );
  }

  Widget _correct() {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF2AE81A).withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF2AE81A),
          width: 2,
        ),
      ),
      child: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.check,
              color: Color(0xFF336D2E),
              size: 20,
            ),
          )),
    );
  }

  Widget _wrong() {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF12222).withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFFF12222),
          width: 2,
        ),
      ),
      child: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.close,
              color: Color(0xFFF12222),
              size: 20,
            ),
          )),
    );
  }
}
