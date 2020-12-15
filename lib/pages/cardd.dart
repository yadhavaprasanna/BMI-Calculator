import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeColor = Color(0XFF1D1E33);
const deactiveColor = Color(0XFF111328);

class Caard extends StatefulWidget {
  Caard({Key key}) : super(key: key);

  @override
  _CaardState createState() => _CaardState();
}

class _CaardState extends State<Caard> {
  Color maleColor = deactiveColor;
  Color femaleColor = deactiveColor;
  void updateColor(int gender) {
    if (gender == 1) {
      maleColor = activeColor;
      femaleColor = deactiveColor;
    }
    if (gender == 2) {
      femaleColor = activeColor;
      maleColor = deactiveColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
              letterSpacing: 1, fontWeight: FontWeight.w900, fontSize: 20),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: RepeatContainerCode(
                      colors: maleColor,
                      cardWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.male,
                            color: Colors.white,
                            size: 85.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: RepeatContainerCode(
                      colors: femaleColor,
                      cardWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.female,
                            color: Colors.white,
                            size: 85.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pushNamed(context, '/s');
              });
            },
            child: FittedBox(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                margin: EdgeInsets.only(bottom: 120.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Text(
                      'CALCULATE YOUR BMI',
                      style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors, @required this.cardWidget});
  final Color colors;
  final Widget cardWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardWidget,
      margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 80.0),
      height: 250.0,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
