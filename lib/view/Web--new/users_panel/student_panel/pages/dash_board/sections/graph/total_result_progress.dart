import 'package:dujo_kerala_website/view/fonts/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StudentTotalExamResultProgressChart extends StatefulWidget {
  const StudentTotalExamResultProgressChart({super.key});

  @override
  StudentTotalExamResultProgressChartState createState() =>
      StudentTotalExamResultProgressChartState();
}

class StudentTotalExamResultProgressChartState
    extends State<StudentTotalExamResultProgressChart> {
  void openPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 85.0,
      lineWidth: 13.0,
      animation: true,
      percent: 0.7,
      center: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "70.0%",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          TextFontWidget(text: "Overall Progress", fontsize: 15)
        ],
      ),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: const Color.fromARGB(255, 9, 215, 191),
    );
  }
}
