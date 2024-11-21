// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart'; // Adicione esta dependência no seu pubspec.yaml

// class MapsPage extends StatefulWidget {
//   const MapsPage({super.key});

//   @override
//   State<MapsPage> createState() => _MapsPageState();
// }

// class _MapsPageState extends State<MapsPage> {
//   late GoogleMapController _mapController;
//   final LatLng _initialPosition = LatLng(-7.1910, -48.20775);

//   Set<Marker> _markers = {};
//   Position? _currentPosition;

//   void _onMapCreated(GoogleMapController controller) {
//     _mapController = controller;
//     _getCurrentLocation(); // Obtém a localização atual quando o mapa é criado
//   }

//   void _onTap(LatLng position) {
//     setState(() {
//       _markers.add(
//         Marker(
//           markerId: MarkerId(position.toString()),
//           position: position,
//           infoWindow: InfoWindow(
//             title: 'Marcador',
//             snippet:
//                 'Latitude: ${position.latitude}, Longitude: ${position.longitude}',
//           ),
//         ),
//       );
//     });
//   }

//   void _showBottomSheet() {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return Container(
//           padding: EdgeInsets.all(16.0),
//           height:
//               MediaQuery.of(context).size.height * 0.5, // Ocupa metade da tela
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Informações do Local',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Aqui você pode adicionar informações sobre o local.',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text('Fechar'),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void _getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     // Verifica se o serviço de localização está habilitado
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       // O serviço de localização não está habilitado, mostre uma mensagem ou solicite ao usuário que ative-o.
//       return;
//     }

//     // Verifica as permissões de localização
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission != LocationPermission.whileInUse &&
//           permission != LocationPermission.always) {
//         // Permissão negada, não pode obter a localização.
//         return;
//       }
//     }

//     // Obtém a posição atual
//     Position position = await Geolocator.getCurrentPosition(
//       desiredAccuracy: LocationAccuracy.high,
//     );

//     print("Latitude: ${position.latitude}, Longitude: ${position.longitude}");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           GoogleMap(
//             onMapCreated: _onMapCreated,
//             initialCameraPosition: CameraPosition(
//               target: _initialPosition,
//               zoom: 15,
//             ),
//             markers: _markers,
//             onTap: _onTap,
//             myLocationEnabled: true,
//             myLocationButtonEnabled:
//                 false, // Desabilita o botão de localização padrão
//           ),
//           Positioned(
//             top: 40,
//             left: 10,
//             child: IconButton(
//               icon: Icon(Icons.arrow_back, color: Colors.black),
//               color: Colors.white,
//               onPressed: () {
//                 Navigator.pop(context); // Volta para a página anterior
//               },
//             ),
//           ),
//           Positioned(
//             top: 40,
//             right: 10,
//             child: IconButton(
//               icon: Icon(Icons.my_location, color: Colors.black),
//               color: Colors.white,
//               onPressed: () {
//                 if (_currentPosition != null) {
//                   _mapController.animateCamera(
//                     CameraUpdate.newLatLng(
//                       LatLng(
//                         _currentPosition!.latitude,
//                         _currentPosition!.longitude,
//                       ),
//                     ),
//                   );
//                 } else {
//                   _getCurrentLocation(); // Atualiza a localização atual
//                 }
//               },
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               color: Colors.white,
//               child: ListTile(
//                 title: Text('Abrir informações'),
//                 trailing: Icon(Icons.expand_more),
//                 onTap: _showBottomSheet,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
