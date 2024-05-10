import 'package:ecommerce/core/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/resources/resources.dart';
import '../../../../core/services/location/location_service.dart';
import '../../../../core/view/views.dart';

class ChooseOnMapScreen extends StatefulWidget {
  const ChooseOnMapScreen({super.key});

  @override
  State<ChooseOnMapScreen> createState() => _ChooseOnMapScreenState();
}

class _ChooseOnMapScreenState extends State<ChooseOnMapScreen> {
  ValueNotifier<String> stringAddress = ValueNotifier("");

  late final GoogleMapController mapController;
  final CameraPosition initialPosition = const CameraPosition(target: LatLng(30.0444, 31.2357), zoom: 6);
  LatLng? tappedLocation;

  Future<void> init(BuildContext context) async {
    final bool isLocationEnabled = await LocationService.isLocationServiceEnabled(context);
    if (!isLocationEnabled || !mounted) return;

    final bool hasPermission = await LocationService.hasPermission();
    if (!hasPermission || !mounted) return;

    final Position position = await LocationService.getCurrentLocation();

    tappedLocation = LatLng(position.latitude, position.longitude);
    setState(() {});
    mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: tappedLocation!, zoom: 14.4746)));
    final String address =
        await LocationService.getAddress(context, tappedLocation!.latitude, tappedLocation!.longitude);
    stringAddress.value = address;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          GoogleMap(
            mapType: MapType.normal,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            zoomControlsEnabled: false,
            initialCameraPosition: initialPosition,
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
              init(context);
            },
            onTap: (latLng) async {
              setState(() => tappedLocation = latLng);
              final String address =
                  await LocationService.getAddress(context, tappedLocation!.latitude, tappedLocation!.longitude);
              stringAddress.value = address;
            },
            markers: {
              if (tappedLocation != null) Marker(markerId: const MarkerId("Tapped-location"), position: tappedLocation!)
            },
          ),
          SafeArea(
            child: GestureDetector(
              onTap: () => Get.back(),
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: Container(
                  padding: const EdgeInsets.all(AppPadding.p12),
                  decoration: const ShapeDecoration(color: AppColors.white, shape: CircleBorder()),
                  child: const Icon(Icons.arrow_back_ios_new_rounded, color: AppColors.black, size: 16),
                ),
              ),
            ),
          ),
          if (tappedLocation != null)
            Align(
              alignment: Alignment.bottomCenter,
              child: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ValueListenableBuilder<String>(
                      valueListenable: stringAddress,
                      builder: (context, value, child) {
                        if (value.isEmpty) return SizedBox.shrink();
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          width: double.infinity,
                          padding: const EdgeInsets.all(AppPadding.p12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: AppColors.black.withOpacity(0.3), blurRadius: 40, offset: Offset(0, 15)),
                              BoxShadow(color: AppColors.black.withOpacity(0.2), blurRadius: 13, offset: Offset(0, 3))
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: CustomText(value),
                        );
                      },
                    ),
                    CustomButton(
                      margin: const EdgeInsets.all(AppPadding.p16),
                      onPressed: () => Get.back(result: tappedLocation == null ? null : stringAddress.value),
                      color: AppColors.primary,
                      width: double.infinity,
                      text: AppStrings.pickHere.tr,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
