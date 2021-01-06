import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'separate.dart';
import 'results.dart';

void main() => runApp(BMICalculator());
const inactivecardcolor = Color(0xFF111328);
const activecardcolor = Color(0xFF1D1E33);
int height = 180;
int weight = 50;
int age = 18;

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Color malecolor = inactivecardcolor;
  Color femalecolor = inactivecardcolor;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        malecolor = activecardcolor;
                        femalecolor = inactivecardcolor;
                      });
                    },
                    child: Cards(
                      x: malecolor,
                      cardChild:
                          Gendercards(Gender: FontAwesomeIcons.mars, g: 'Male'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        malecolor = inactivecardcolor;
                        femalecolor = activecardcolor;
                      });
                    },
                    child: Cards(
                      x: femalecolor,
                      cardChild: Gendercards(
                          Gender: FontAwesomeIcons.venus, g: 'Female'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Cards(
                    x: inactivecardcolor,
                    cardChild: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 25,
                        ),
                        Text('Height'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(height.toString(),
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.bold)),
                            Text('cm',
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.deepPurpleAccent[600],
                            inactiveTrackColor: Colors.blueGrey,
                            thumbColor: Colors.deepPurpleAccent,
                            overlayColor: Color(0x29646aba),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 10),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 25),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 210,
                            onChanged: (double newheight) {
                              setState(() {
                                height = newheight.toInt();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Cards(
                    x: inactivecardcolor,
                    cardChild: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'weight',
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text('kg'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            button(
                              icon: FontAwesomeIcons.minus,
                              a: 'sethu',
                              onpressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            button(
                                icon: Icons.add,
                                a: 'bharathi',
                                onpressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Cards(
                      x: inactivecardcolor,
                      cardChild: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'age',
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              button(
                                icon: FontAwesomeIcons.minus,
                                a: 'f',
                                onpressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              button(
                                  icon: Icons.add,
                                  a: 'h',
                                  onpressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          bottombutton(
            title: 'Calculate',
            ontap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Result()));
            },
          ),
        ],
      ),
    );
  }
}

