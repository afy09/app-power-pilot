import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
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
              Color(0xFFC7C4C1),
              Color(0xFF8A837E),
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Pertanyaan',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '5 dari 10',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF3E3D3E),
                          border: Border.all(
                            color: Color(0xFF878584),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Container(
                                width: 200,
                                height: 150,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://upload.wikimedia.org/wikipedia/commons/f/f8/AK-47.png',
                                  fit: BoxFit.contain,
                                  placeholder: (context, url) => const Center(
                                    child: SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 40),
                                decoration: BoxDecoration(
                                  color: Color(0xFF4B4B4B).withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "Apa nama senjata berikut?",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: AnswerOption(
                              text: "AK47",
                              isCorrect: true,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: AnswerOption(
                              text: "Glock47",
                              isCorrect: false,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: AnswerOption(
                              text: "JKT47",
                              isCorrect: false,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: AnswerOption(
                              text: "VR46",
                              isCorrect: false,
                            ),
                          ),
                        ].map((Widget widget) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0), // Atur jarak sesuai kebutuhan
                            child: widget,
                          );
                        }).toList(),
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
                                  Color(0xFF757472)),
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
                        0xFFA9A4A2), // Ganti dengan warna background yang Anda inginkan
                    borderRadius: BorderRadius.circular(
                        15), // Ganti dengan radius border yang Anda inginkan
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Color(0xFF504848),
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
