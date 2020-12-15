import 'package:flutter/material.dart';
import 'package:health/pages/bmimodel.dart';
import 'package:health/pages/result.dart';

class Slide extends StatefulWidget {
  const Slide({Key key}) : super(key: key);

  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  double rate = 100.0;
  double raate = 20.0;
  int myRaate = 20;

  double bmi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(50.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 200,
                  height: 200,
                  child: Image(
                    image: AssetImage('videos/scale.png'),
                  )),
              SizedBox(height: 30.0),
              Text(
                "BMI CALCULATOR",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                    color: Colors.white),
              ),
              Text(
                '"The Greatest Wealth is HEALTH"',
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 15.0,
                    color: Colors.blue),
              ),
              SizedBox(height: 20.0),
              Text(
                "Height (CM)",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                    color: Colors.grey,
                    letterSpacing: 1),
              ),
              //SizedBox(height: 20),
              Container(
                child: Slider(
                  value: rate,
                  onChanged: (newrate) {
                    setState(() {
                      rate = newrate;
                    });
                  },
                  min: 80.0,
                  max: 250.0,
                  divisions: 100,
                  label: '$rate',
                ),
              ),
              SizedBox(height: 20),

              Text(
                "$rate",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 35.0,
                    color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                "Weight (kg)",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                    color: Colors.grey,
                    letterSpacing: 1),
              ),
              Container(
                child: Slider(
                  value: raate,
                  onChanged: (newraate) {
                    setState(() {
                      raate = newraate;

                      myRaate = newraate.toInt();
                    });
                  },
                  min: 20,
                  max: 150,
                  divisions: 100,
                  label: '$raate',
                ),
              ),
              SizedBox(height: 20),
              Text(
                "$myRaate",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 35.0,
                    color: Colors.white),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
                child: RaisedButton.icon(
                  onPressed: () {
                    calculate calc = calculate(height: rate, weight: myRaate);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Result(
                                  bmiresult: calc.calculatebmi(),
                                  resulttext: calc.getresult(),
                                  comment: calc.getcomment(),
                                )));
                  },
                  icon: Icon(Icons.favorite),
                  label: Text(
                    'calculate'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
