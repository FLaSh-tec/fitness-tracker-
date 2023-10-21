import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FitnessTracker(),
    );
  }
}

class FitnessTracker extends StatefulWidget {
  @override
  _FitnessTrackerState createState() => _FitnessTrackerState();
}

class _FitnessTrackerState extends State<FitnessTracker> {
  int _steps = 0;
  double _caloriesBurned = 0;

  void _incrementSteps() {
    setState(() {
      _steps += 1000;
      _caloriesBurned += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Tracker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Steps: $_steps',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Calories Burned: $_caloriesBurned cal',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: _incrementSteps,
              child: Text('Add 1000 Steps'),
            ),
          ],
        ),
      ),
    );
  }
}
