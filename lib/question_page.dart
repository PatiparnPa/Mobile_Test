import 'package:flutter/material.dart';
import 'question_data.dart';
import 'result_page.dart';

class QuestionPage extends StatefulWidget {
  final int questionNumber;
  final List<int>? selected;

  const QuestionPage({Key? key, required this.questionNumber, this.selected})
      : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int selectedAnswerIndex = -1;
  List<Map<String, dynamic>> answers = [];
  List<int> selected = [];

  @override
  void initState() {
    super.initState();
    answers = QuestionData.questions[widget.questionNumber]['answers'];
    if (widget.selected != null) {
      selected = widget.selected!;
      // selectedAnswerIndex = selected[widget.questionNumber];

      //print("Selected:--> $selected");

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Question ${widget.questionNumber + 1} of 7',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF2D6936),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                QuestionData.questions[widget.questionNumber]['question'],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: answers.length,
              itemBuilder: (context, index) {
                return RadioListTile(
                  title: Text(
                    '${answers[index]['answer']} (${answers[index]['carbon']} ${answers[index]['metric']})',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  value: index,
                  groupValue: selectedAnswerIndex,
                  onChanged: (int? value) {
                    setState(() {
                      selectedAnswerIndex = value!;
                      selected.add(selectedAnswerIndex);
                    });
                  },
                  activeColor: Colors.black,
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (selectedAnswerIndex >= 0) {
                if (widget.questionNumber == 6) {
                  // check if it's the last question
                  double totalCarbon = 0;
                  for (int i = 0; i < selected.length; i++) {
                    totalCarbon += QuestionData.questions[i]['answers']
                        [selected[i]]['carbon'];
                  }

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        totalCarbonTons: totalCarbon,
                      ),
                    ),
                  );
                } else {
                  QuestionData.questions[widget.questionNumber]
                      ['selectedAnswerIndex'] = selectedAnswerIndex;
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuestionPage(
                        questionNumber: widget.questionNumber + 1,
                        selected: selected,
                      ),
                    ),
                  );
                }
              }
            },
            child: Text(
              widget.questionNumber == 6 ? 'See Results' : 'Next',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF5D8262),
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
