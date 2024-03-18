import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:the_real_thing/config/app_icons.dart';
import 'package:the_real_thing/config/app_strings.dart';
import 'package:the_real_thing/styles/app_colors.dart';

import '../components/toolbar.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(
        title: AppStrings.nearby,
      ),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(37.983810, 23.727539),
          initialZoom: 10,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            // Plenty of other options available!
          ),
          MarkerLayer(markers: [
            Marker(
              width: 100,
              height: 80,
              point: const LatLng(37.983810, 23.727539),
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  child: const Text(
                    'Username',
                    style: TextStyle(
                      color: AppColors.black,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  AppIcons.icLocation,
                  colorFilter: const ColorFilter.mode(
                    AppColors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ]),
            )
          ])
        ],
      ),
    );
  }
}
