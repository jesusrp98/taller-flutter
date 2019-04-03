import 'package:flutter/material.dart';

/// ESTA ES UNA APLICACION DE EJMPLO CONSTRUIDA EN FLUTTER.
/// SERVIRÁ COMO PLANTILLA PARA EL TALLER DE FLUTTER DEL ASL 2019.

// Funcion 'main' principal del programa, es la primera que se ejecuta.
// Como sólo hace una accion, podemos usar la flecha (=>).
//
// Código equivalente:
// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

// MyApp es una clase de tipo widget que construye nuestra aplicacion.
// Devuelve un objeto 'MaterialApp', que construye una aplicacion con el tema
// 'Material Design' de Google.
// [title]: Título de la aplicación para el sistema.
// [theme]: Objeto de tipo 'Theme' que devuelve un tema la aplicacion.
//    En este caso, el tema principal de la app será azul.
// [home]: Página de inicio. Este parámetro será de tipo widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

// La clase HomePage devuelve otro widget.
// Éste será la página principal de nuestra aplicacion.
// El objeto 'Scaffold' construye una ventana con la que el usuario podrá interactuar.
// [appBar]: Barra superior de la aplicación. Será de color azul. También es un widget.
// [body]: El cuerpo principal de nuestra ventana. Tiene un hijo, en este caso un objeto 'Center'.
// Éste widget recibirá otro widget, el cual colocará en el centro de la ventana.
// El hijo será un objeto columna, que sólo tiene un hijo de tipo Text.
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("I'm a sample Text widget. Woah!"),
          ],
        ),
      ),
    );
  }
}
