# LoL Action Card Game

LoL Action Card Game es la primera aplicación de ocho que estaremos creando en el curso de introducción a Flutter. En este readme te daremos las instrucciones para crear un nuevo proyecto, limpiar 'main.dart' y crear tu primer widget. Consulta el código terminado en este repositorio. Allí encontrarás el código finalizado y los comentarios correspondientes.

## 1. Crear el proyecto

Para crear el proyecto lo primero que debemos hacer es inicializar nuestro editor de código. Recomiendo usar VS Code. Al estar este cargado, creamos un proyecto nuevo seleccionando la opción 'Command Palette' dentro de la pestaña 'View' de la barra superior, prsionando shift + Control + P. Se revelará una pestaña en la parte superior central de nuestra pantalla. Ingresamos la palabra 'flutter' dentro de la caja de texto para filtrar las opciones y seleccionamos 'Flutter: New Project'. Nos pedirá nombrar nuestro proyecto (recomiendo un nombre representativo de lo que se programará) y folder en el cual lo guardaremos.

## 2. Abrir el archivo 'main.dart'

El código de esta aplicación vivirá dentro de un sólo archivo, 'main.dart'. Al abrirlo veremos que ya hay código en ese archivo, la aplicación de prueba incluida en cada proyecto nuevo. Borremos los comentaros y, el parámetro 'title' y su valor dentro de la instancia de MyHomePage, y todo el código que está por debajo de la definición de la clase 'MyApp', resultando en lo siguiente:

```
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
```
Deberíamos notar que la invocación de MyHomePage esta subrayada con una línea roja. Es una indicación visual de que hay un error en nuestro código. Al colocar el indicador sobre la línea y la invocación se muestra caja con un mensaje indicando que la clase que estamos tratando de invocar no existe. Debemos crearla.

## 3. Crear nuestro primer widget

Abajo del corchete que cierra nuestra clase MyApp escribamos las letras stl. Se debería manifestar un menú con varias opciones, una de ellas siendo 'Flutter stateless widget', y al seleccionarlo debería producirse una estructura base. La llamaremos MyHomePage, y el error que se presentaba arriba debería de desaparecer. Súper! Creaste tu primer Widget.

```
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
```

En este caso es un SatelessWidget, un widget incapaz de mantener y renderizar su estado dinámicamente. Este incluye un método indispensable, 'build'. Es este el encargado de construir el widget y todos sus componentes, y dentro de él crearemos la estructura de nuestra aplicación.

## 4. Crear la estructura del app