import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
//import 'package:geolocator/geolocator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return new MaterialApp(
      title:'' ,
      home: new Scaffold(
        appBar: new AppBar(title: Text('Display Map'),),
        body : new FlutterMap(
          options: new MapOptions(
          
            center: new LatLng(23.5, 71.00),
            zoom: 11.0,
          ),
          layers: [
            new TileLayerOptions(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a','b','c']
            ),
            new MarkerLayerOptions(
              markers: [
                new Marker(
                  width: 80.0,
                  height: 80.0,
                  point : new LatLng(23.5, 71.00),
                  builder: (context)=> 
                    new Container(
                      child: Icon(Icons.location_on) ,
                    )
                )
              ],
            ) 
          ]
        )
      )
    );
  }// build
}

//Over
