import 'package:flutter/material.dart';
import 'package:health/pages/bmimodel.dart';

class Result extends StatelessWidget {
  Result(
      {@required this.comment,
      @required this.bmiresult,
      @required this.resulttext});
  final String bmiresult;
  final String resulttext;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RESULT',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 300,
              child: Image.asset('videos/happy.png'),
            ),
            Text(
              'Your BMI is $bmiresult!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 20.0),
            Text(
              " $resulttext !".toUpperCase(),
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                ' $comment',
                style: TextStyle(
                    color: Colors.blueGrey, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.all(10),
              child: RaisedButton.icon(
                color: Colors.red[600],
                onPressed: () {
                  Navigator.pushNamed(context, '/s');
                },
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.white,
                ),
                label: Text(
                  "let's calculate again",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
