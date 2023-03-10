import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:selim_trade/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

LatLng currentLoc = const LatLng(42.848347597623814, 74.58740061363872);

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: AppColors.color105BFB, blurRadius: 1, spreadRadius: 1)
            ],
            borderRadius: BorderRadius.circular(5),
          ),
          height: 145,
          width: 180,
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
                CameraPosition(target: currentLoc, zoom: 17.5),
          ),
        ),
        Positioned(
            bottom: 5,
            left: 5,
            child: Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.grey[350]),
            )),
        Positioned(
            bottom: 5,
            left: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: Colors.white.withOpacity(0.4)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Адрес',
                      style:
                          TextStyle(color: AppColors.color414141, fontSize: 8),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'г. Бишкек, ул. Айни 22',
                      style:
                          TextStyle(fontSize: 8, color: AppColors.color414141),
                    )
                  ]),
            ))
      ],
    );
  }
}
