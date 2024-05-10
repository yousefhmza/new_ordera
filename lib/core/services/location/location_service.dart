import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/utils/alerts.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:location/location.dart' as loc;

class LocationService {
  static Future<bool> isLocationServiceEnabled(BuildContext context) async {
    bool isEnabled = await loc.Location.instance.serviceEnabled();
    if (isEnabled) {
      return true;
    } else {
      isEnabled = await loc.Location.instance.requestService();
      if (isEnabled) {
        return true;
      } else {
        Get.back();
        return false;
      }
    }
  }

  static Future<bool> hasPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
        Get.back();
        return false;
      }
    } else if (permission == LocationPermission.deniedForever) {
      Get.back();
      await Geolocator.openAppSettings();
      return false;
    }
    return true;
  }

  static Future<Position> getCurrentLocation() async =>
      await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);

  static Future<String> getAddress(BuildContext context, double lat, double lng) async {
    try {
      setLocaleIdentifier("en");
      List<Placemark> placeMarks = await placemarkFromCoordinates(lat, lng);
      return "${placeMarks[0].country}, ${placeMarks[0].administrativeArea}, ${placeMarks[0].subAdministrativeArea}, ${placeMarks[0].street}";
    } on Exception catch (e) {
      Get.back();
      Alerts.showSnackBar(message: AppStrings.fetchAddressError.tr);
      return "";
    }
  }
}
