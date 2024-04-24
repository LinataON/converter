import 'package:flutter/material.dart';

class ConverterScreen extends StatefulWidget {
  const ConverterScreen({Key? key}) : super(key: key);

  @override
  _ConverterScreenState createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  TextEditingController _kilometerController = TextEditingController();
  TextEditingController _mileController = TextEditingController();

  @override
  void dispose() {
    _kilometerController.dispose();
    _mileController.dispose();
    super.dispose();
  }

  void convert() {
    double kilometers = double.tryParse(_kilometerController.text) ?? 0;
    double miles = kilometers * 0.621371;
    setState(() {
      _mileController.text = miles.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kilometer to Mile Converter'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _kilometerController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Kilometers',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: convert,
              child: Text('Convert'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _mileController,
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Miles',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

