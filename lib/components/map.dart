import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:selim_trade/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

const LatLng currentLoc = LatLng(42.848347597623814, 74.58740061363872);

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: AppColors.color105BFB, blurRadius: 1, spreadRadius: 1)
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      height: 155,
      width: 170,
      child: GoogleMap(
        zoomControlsEnabled: false,
        myLocationButtonEnabled: false,
        mapType: MapType.normal,
        onTap: (argument) async {
          const uri = 'https://goo.gl/maps/WJYcaegLxLLQoodw5';
          final url = Uri.parse(uri);
          if (await canLaunchUrl(url)) {
            launchUrl(url);
          }
        },
        buildingsEnabled: true,
        initialCameraPosition:
            const CameraPosition(target: currentLoc, zoom: 17.5),
      ),
    );
  }
}
