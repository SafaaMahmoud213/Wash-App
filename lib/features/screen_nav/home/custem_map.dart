import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wash_app_flutter/core/utils/app_images.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(30.043118285453133, 31.231680781297417),
    zoom: 12,
  );
  Set<Marker> markers = {};
  String mapStyle = "";
  StreamSubscription<Position>? positionStream;
  bool isPermisionGranted = false;
  LatLng? _currentLocations;

  @override
  void initState() {
    super.initState();
    _upLoadStyle();
    _checkPermissionRequest();
  }

  @override
  void dispose() {
    positionStream?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: GoogleMap(
        myLocationEnabled: isPermisionGranted,
        myLocationButtonEnabled: true,
        mapType: MapType.hybrid,
        markers: markers,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) async {
          _controller.complete(controller);
          final icon = await _customIcons();
          setState(() {
            markers.add(
              Marker(
                markerId: MarkerId("Marker1"),
                position: LatLng(31.168216658864132, 29.876529240078778),
                infoWindow: InfoWindow(snippet: "Marker1", title: "cairo"),
                icon: icon,
              ),
            );
          });
          if (mapStyle.isNotEmpty) {
            controller.setMapStyle(mapStyle);
          }
        },
      ),
    );
  }

  Future _upLoadStyle() async {
    final String style = await DefaultAssetBundle.of(
      context,
    ).loadString("assets/map/mapstyle.json");
    setState(() {
      mapStyle = style;
    });
  }

  Future<BitmapDescriptor> _customIcons() async {
    return BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(48, 48)),
      AppImages.car,
    );
  }

  Future<void> _checkPermissionRequest() async {
    PermissionStatus status = await Permission.location.request();
    if (status.isGranted) {
      setState(() {
        isPermisionGranted = true;
      });
      _getUserLocation();
    }
  }

  Future<void> _getUserLocation() async {
    if (!isPermisionGranted) {
      return;
    }
    Position position = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
    );
    setState(() {
      _currentLocations = LatLng(position.latitude, position.longitude);
    });
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target:
              _currentLocations ??
              const LatLng(29.30842111835233, 30.84245632914326),
          zoom: 10,
        ),
      ),
    );
    _startTracking();
  }

  void _startTracking() {
    positionStream = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
    ).listen((Position position) {
      setState(() {
        _currentLocations = LatLng(position.latitude, position.longitude);
      });
      _controller.future.then((controller) {
        controller.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target:
                  _currentLocations ??
                  const LatLng(30.043118285453133, 31.231680781297417),
              zoom: 10,
            ),
          ),
        );
      });
    });
  }
}
