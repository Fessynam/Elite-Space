import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/disease-info');
              },
              child: Text('Disease Information'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/alerts');
              },
              child: Text('Alerts'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/herbal-remedies');
              },
              child: Text('Herbal Remedies'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/meal-selection');
              },
              child: Text('Meal Selection'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/shopping-list');
              },
              child: Text('Shopping List'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/meal-preparation');
              },
              child: Text('Meal Preparation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dietary-intake-summary');
              },
              child: Text('Dietary Intake Summary'),
            ),
          ],
        ),
      ),
    );
  }
}
