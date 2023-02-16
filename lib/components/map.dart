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
      height: 130,
      width: 140,
      child: GoogleMap(
        myLocationButtonEnabled: false,
        mapType: MapType.normal,
        onTap: (argument) async {
          const uri =
              'https://2gis.kg/bishkek/geo/15763234351042520?m=74.587379%2C42.848195%2F16';
          final url = Uri.parse(uri);
          if (await canLaunchUrl(url)) {
            launchUrl(url);
          } else {
            throw 'couldn\'t launch $url';
          }
        },
        buildingsEnabled: true,
        initialCameraPosition:
            const CameraPosition(target: currentLoc, zoom: 17.3),
      ),
    );
  }
}
