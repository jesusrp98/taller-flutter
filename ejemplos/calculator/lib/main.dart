import 'package:flutter/material.dart';

/// ESTA APLICACION DE EJEMPLO CONSTRUIDA EN FLUTTER
/// MUESTRA UN EJEMPLO DE CÓMO CONSTRUIR UNA CALCULADORA SENCILLA.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  num num1 = 0, num2 = 0, result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Resultado: $result',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23),
              onChanged: (string) => num1 = int.parse(string),
            ),
            TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23),
              onChanged: (string) => num2 = int.parse(string),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  color: Colors.lightBlueAccent,
                  onPressed: () => setState(() => result = num1 + num2),
                ),
                MaterialButton(
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  color: Colors.lightBlueAccent,
                  onPressed: () => setState(() => result = num1 - num2),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    '*',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  color: Colors.lightBlueAccent,
                  onPressed: () => setState(() => result = num1 * num2),
                ),
                MaterialButton(
                  child: Text(
                    '/',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  color: Colors.lightBlueAccent,
                  onPressed: () => setState(() => result = num1 ~/ num2),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
