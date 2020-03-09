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
  /// Este es el primer numero del calculo
  num num1 = 0;

  /// Este es el segundo numero del calculo
  num num2 = 0;

  /// Este es el resultado final
  num result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
        centerTitle: true,
      ),
      body: Padding(
        // Se establece un espacio alrededor de los elementos de la interfaz de tamaño 16
        padding: EdgeInsets.all(16),
        // Todos los elementos hijo de la columna de estableceran de arriba a abajo
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Este texto muestra el resultado final
            Text(
              'Resultado: $result',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            // Campo de texto que establece el valor del primer numero
            TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23),
              onChanged: (string) => num1 = int.parse(string),
            ),
            // Campo de texto que establece el valor del segundo numero
            TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23),
              onChanged: (string) => num2 = int.parse(string),
            ),
            SizedBox(height: 20),
            // Esta vista se encarga de realizar la operación indicada por el usuario
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
