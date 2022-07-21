
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../data/constants/app_data.dart';
import '../controller/trip_details_screen_controller.dart';

class GetGoogleMapsForTripDetailsScreen extends StatelessWidget {
  const GetGoogleMapsForTripDetailsScreen({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TripDetailsScreenController controller;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(
            AppData.defaultBorderRadius),
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(
              controller.userLocation!.latitude!,
              controller.userLocation!.longitude!,
            ),
            zoom: 13.5,
          ),
          polylines: {
            Polyline(
              polylineId: const PolylineId("route"),
              points: controller.polylineCoordinates,
              color: AppData.darkBlueColor,
              width: 6,
            )
          },
          onMapCreated: (mapController) {
            controller.mapController
                .complete(mapController);
          },
          markers: {
            Marker(
              markerId: MarkerId("source"),
              icon: BitmapDescriptor.defaultMarker,
              position: LatLng(
                controller.sourceLocation.latitude,
                controller.sourceLocation.longitude,
              ),
            ),
            Marker(
              markerId: MarkerId("destination"),
              icon: BitmapDescriptor.defaultMarker,
              position: LatLng(
                controller.destinationLocation.latitude,
                controller.destinationLocation.longitude,
              ),
            ),
            Marker(
              markerId: MarkerId("UserLocation"),
              icon: controller.userIcon.value,
              position: LatLng(
                controller.userLocation!.latitude!,
                controller.userLocation!.longitude!,
              ),
            ),
            Marker(
              markerId: MarkerId("RiderLocation"),
              icon: controller.riderIcon.value,
              position: LatLng(
                controller.riderLocation.latitude,
                controller.riderLocation.longitude,
              ),
            ),
          },
        ),
      );
  }
}
