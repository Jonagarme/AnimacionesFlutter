import 'package:disenos/src/widgets/radial_progress.dart';
import 'package:flutter/material.dart';

class GraficasCirculares extends StatefulWidget {
  @override
  _GraficasCircularesState createState() => _GraficasCircularesState();
}

class _GraficasCircularesState extends State<GraficasCirculares> {
  double porcentaje = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            porcentaje += 10;
            if (porcentaje > 100) {
              porcentaje = 0;
            }
          });
        },
        child: Icon(Icons.refresh),
      ),
      body: Center(
        //child: Text('$porcentaje %', style: TextStyle(fontSize: 50.0)),
        child: Container(
          width: 300,
          height: 300,
          child: RadialProgress(
            porcentaje: porcentaje,
            colorPrimario: Colors.purple,
            colorSecundario: Colors.grey,
            grosoPrimario: 10,
            grosorSecundario: 4,
          ),
        ),
      ),
    );
  }
}
