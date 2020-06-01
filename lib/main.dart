// Importamos el paquete 'material.dart'. Este nos da acceso a una gran variedad de elementos creados usando los principios estipulados en Material Design, un medio de comunicación visual.
import 'package:flutter/material.dart';

// La función main es el punto de entrada de la aplicación al ejecutarla.
void main() {
  // La función runApp se encarga de inflar el árbol de widgets y plasmarlo en la pantalla.
  runApp(MyApp());
}

// MyApp es una clase que hereda de otra, StatelessWidget. En flutter casiq ue todo es un widget, incluyendo el elemento de más alto nivel de nuestra aplicación.
class MyApp extends StatelessWidget {
  // Todo StatelessWidget tiene método 'build'. Este se encarga de describir el widget en relación a otros elementos de menor jerarquía en el árbol.
  @override
  Widget build(BuildContext context) {
    // Este widget crea una envoltura que contiene varios widgets diseñados según Material Design. Nos da acceso a ellos.
    return MaterialApp(
      // El título de nuestra aplicación.
      title: 'LOL Action Card Game',
      // ThemeData nos permite establecer prámetros (colores, tipografía, formas, etc) que se utilizarán by default en el resto de la aplicación
      theme: ThemeData(
        // El color principal.
        primarySwatch: Colors.deepPurple,
        // Nos permite hacer elementos más compactos. La opción preseleccionada se adapta al tamaño de la pantalla. Mientras más pequeña, más compacto renderiza los elemetos.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // La primera vista que se mostrará en nuestra aplicación.
      home: MyHomePage(),
    );
  }
}

// Nuestra vista principal también es un StatelessWidget.
class MyHomePage extends StatelessWidget {
  // Definimos e inicializamos un PageController para nuestro PageView. Nos permite manipular que página se muestra dentro de nuestro PageView.
  final controller = PageController(
    // El índice del elemento inicial en la lista de hijos en nuestro Page View.
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    // Scaffold implementa la estructura visua principal basada en Material Design.
    return Scaffold(
      // Le damos un color principal al fondo de nuestro scaffold. La clase Colors nos da acceso a varios colores predefinidos como parte de MaterialApp.
      backgroundColor: Colors.black,
      // SafeAre evita que ciertas partes renderizadas por el OS de los dispositivos esten impuestos sobre elementos del app.
      body: SafeArea(
        // PageView permite navegar entre diferentes vistas por medio de un gesto (swipe).
        child: PageView(
          // Una lista de páginas entre las cuales se puede navegar.
          children: <Widget>[
            // Un Column widget nos permite organizar distintos elementos verticalmente. Junto con Row y Stack se les conoce como layout widgets.
            Column(
              // Los elementos que se mostrarán dentro de la columna, según el orden dentro de la lista.
              children: <Widget>[
                // Text widget nos permite mostrar y modificar (no completamente) texto.
                Text(
                  // El primer parámetro es el string que se debe renderizar. Es posicional y obligatorio.
                  'Aatrox',
                  // Un parámetro opcional el style. Toma un TextStyle y por medio de él se pueden realizar muchas modificaciones al texto. Por ejemplo:
                  style: TextStyle(
                      // Cambiar el tamaño de la fuente.
                      fontSize: 50.0,
                      // O el grosor.
                      fontWeight: FontWeight.w100,
                      // Y el color.
                      color: Colors.white),
                ),
                // Center widgets centran a su hijo en relación a su padre dinámicamente.
                Center(
                  // El image widget crea el contexto para mostrar una imagen. Utiliza un widget como hijo para recolectar la imagen.
                  child: Image(
                    // NetworkImage se encarga de buscar una imagen por medio de una URL.
                    image: NetworkImage(
                        'https://vignette.wikia.nocookie.net/leagueoflegends/images/5/58/Aatrox_Render.png/revision/latest/scale-to-width-down/254?cb=20200324150018'),
                  ),
                ),
                // Expanded widget permite a su hijo tomar todo el espacio disponible dentro de su padre. Si es el único hijo de un Column o Row, toma el espacio completo disponible. Si hay más widgets que no son Expanded dentro de la Columna o Row, toma el espacio restante total. Si hay varios Expanded widgets, comparten el espacio equitativamente. Se puede utilizar el parámetro flex dentro del Expanded widget para compartir espacio entre otros Expanded widgets proporcionalmente.
                Expanded(
                  // Padding crea un espacio entre su hijo y padre.
                  child: Padding(
                    // EdgeInsets define la magnitud y posición de los espacios que se crearán.
                    padding: EdgeInsets.all(16.0),
                    // List view crea una columna desplazable de elementos. Se puede orientar verticalmente (default) u horizontalmente.
                    child: ListView(
                      // Sus hijos ordenados en una lista.
                      children: <Widget>[
                        Text(
                          'Once honored defenders of Shurima against the Void, Aatrox OriginalSquare Aatrox and his brethren would eventually become an even greater threat to Runeterra, and were defeated only by cunning mortal sorcery. But after centuries of imprisonment, Aatrox was the first to find freedom once more, corrupting and transforming those foolish enough to try and wield the magical weapon that contained his essence. Now with stolen flesh, he walks Runeterra in a brutal approximation of his previous form, seeking an apocalyptic and long overdue vengeance.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          // Un Row widget nos permite organizar distintos elementos horizontalmente. Junto con Column y Stack se les conoce como layout widgets.
                          child: Row(
                            // Podemos alinear los elementos dentro de Rows (y Columns) en su eje principal (Main) y secundario (Cross). El eje principal de un Row es el horizontal y el secundario es el vertical. Lo opuesto es cierto para una Column. Space between reparte equitativamente el espacio entre los eleementos en el eje.
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // Los elementos que se mostrarán dentro de la fila, según el orden dentro de la lista.
                            children: <Widget>[
                              Text(
                                'Health',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '10',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Damage',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '10',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Armor',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '10',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Magic Resist',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '10',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
