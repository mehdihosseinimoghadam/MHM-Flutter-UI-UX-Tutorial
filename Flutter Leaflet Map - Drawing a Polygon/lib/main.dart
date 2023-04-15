import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';



void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Polygon> Polygons = [
    Polygon(points:  [LatLng(51.5251217665913, -0.08750429301284157), LatLng(51.52472895081553, -0.08759899699452944), LatLng(51.52334424817988, -0.08734645304377864), LatLng(51.52229341736876, -0.08707812509587143), LatLng(51.52165505036376, -0.0870465571028376), LatLng(51.52059435924525, -0.08723596506618492), LatLng(51.52045686043991, -0.08723596506618492), LatLng( 51.52025061145315, -0.08523139745747699), LatLng(51.52126220468193, -0.0848367975335691), LatLng(51.521213098733455, -0.08355829378393764), LatLng(51.52200860857974, -0.08332153382906426)],
    color: Colors.redAccent,
    isFilled: true  
    )
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(51.5251217665913, -0.08750429301284157),
                  zoom: 14
              ),
              nonRotatedChildren: [
                AttributionWidget.defaultWidget(source: 'OpenStreetMap contributers', onSourceTapped: null),
              ],
              
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
                PolygonLayer(
                  polygons: Polygons.sublist(0),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}

































































// [LatLng(51.5251217665913, -0.08750429301284157)]
//
//
// [LatLng(51.5251217665913, -0.08750429301284157), LatLng(51.52472895081553, -0.08759899699452944), LatLng(51.52334424817988, -0.08734645304377864), LatLng(51.52229341736876, -0.08707812509587143), LatLng(51.52165505036376, -0.0870465571028376), LatLng(51.52059435924525, -0.08723596506618492), LatLng(51.52045686043991, -0.08723596506618492), LatLng( 51.52025061145315, -0.08523139745747699), LatLng(51.52126220468193, -0.0848367975335691), LatLng(51.521213098733455, -0.08355829378393764), LatLng(51.52200860857974, -0.08332153382906426)]
//
//
//
//
// LatLng(51.523652775033895, -0.07691958874553961), LatLng(51.52367072739264, -0.07517395592805087), LatLng(51.52374759498451, -0.07456489264279753), LatLng( 51.52407252506501, -0.0735038380923072), LatLng( 51.525200571796205, -0.07092957119888865), LatLng(51.52557083986238, -0.0701268435088025), LatLng(51.52603223592109, -0.06802406148216278)]