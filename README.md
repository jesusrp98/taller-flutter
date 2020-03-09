<p align="center">
  <img src="https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png" width="200">
</p>
<h2 align="center">Taller de Flutter - Aula Software Libre 2020</h2>

Aquí se encuentran hospedadas diversas herramientas que serán utilizadas en el taller de Flutter, impartido por Jesús Rodríguez, en colaboración con el Aula de Software Libre de la Universidad de Córdoba. Para más información, siga el [enlace](https://consejo-eps.uco.es/aulasoftwarelibre/actividades/idea/flutter-beyond-mobile) de la página de Ideas del Aula de Software Libre.

- **Fecha**: martes 10 de marzo de 16:00 a 18:00.
- **Aula**: Sala de prensa del Rectorado de la UCO.

## Clonar repositorio

Para clonar este repositorio, copia y pega en una ventana de la terminal el siguiente comando:

```
$ git clone git@github.com:jesusrp98/taller-flutter.git
```

## Herramientas

Éstas son las herramientas necesarias para trabajar con Flutter en un entorno GNU+Linux.

- [**Android Studio & SDK**](https://developer.android.com/studio/install#linux): necesario para instalar el SDK de Android, y poder construir aplicaciones para este sistema operativo.

- [**Flutter SDK**](https://flutter.dev/docs/get-started/install/linux): herramienta con la que construiremos aplicaciones nativas multiplataformas. Se puede utilizar este [script](https://github.com/jesusrp98/taller-flutter/blob/master/flutter.sh) para facilitar la instalación de Flutter en entornos GNU+Linux.

También existen métodos para instalar las herramientas necesarias en sistemas operativos propietarios.

¡No se olvide de instalar el plugin necesario para poder ejecutar Flutter en Android Studio, o su IDE preferido!

Una vez instalado todo, se puede comprobar si está todo bien instalado ejecutando este comando:

```
$ flutter doctor
```

### DartPad

Como alternativa, si no puede instalar los programas necesarios, puede probar el entorno de Flutter haciendo uso de la página [dartpad.dev](https://dartpad.dev/).

## Construir app

Para construir una aplicación, se peude hacer uso del comando `build`, seguido de la plataforma sobre la que desea ejecutar la aplicación: Android, iOS, Web...

```
$ flutter build android|ios|web
```

Si lo que se desea es ejecutar la aplicación, se usará el comando `run`.

```
$ flutter run android|ios|web
```

## Ejemplos

En este repositorio se encuentran diversos ejemplos, que servirán de ayuda para comprender conceptos básicos de Flutter.

- **Layout**: Este ejemplo muestra cómo se pueden manejar diversos widgets de layout, como pueden ser 'Rows' y 'Columns'. También se muestra cómo se anidan unos dentro de otros.

- **Stateful widgets**: Muestra cómo trabajar con widgets por estado propio. Se trabaja cómo alamacenar, actualizar y mostrar un estado.

- **Calculadora**: Este ejemplo será el desarrollado durante el taller práctico. Consiste en una calculadora sencilla, donde el usuario introduce por teclado los números, y después puede elegir la operación a ejecutar.

- **Responsive**: Este proyecto ilustra cómo una aplicación básica sin ningún tipo de lógica puede adaptarse a distintos tipos de dispositivos.

- **Responsive+API**: Es una variación del último ejemplo, pero añadiendo una lógica mínima, haciendo uso de una REST API. La vista principal cuenta con una columna de selección, y una vista principal del elemento seleccionado.

## Plantilla

Se puede usar [este](https://github.com/jesusrp98/taller-flutter/tree/master/taller_plantilla) proyecto básico de Flutter durante la realización del taller, así como unos posteriores primeros pasos.

## Presentación

En este repositorio podéis encontrar la [presentación](https://github.com/jesusrp98/taller-flutter/tree/master/presentation.pdf) usada en el taller (formato PDF).

## Agradecimientos

Gracias al Aula de Software Libre de la Universidad de Córdoba, y en especial a Sergio Gómez, por hacer posible este taller :)

<p align="center">
  <img src="https://www.pikpng.com/pngl/b/344-3447005_el-aula-de-software-libre-cumple-10-aos.png" width="200">
</p>
