import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

import 'map.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 280,
      width: 359,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.footerBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 89.5,
              ),
              Column(
                children: const [
                  Text('РЕЖИМ РАБОТЫ'),
                  Text('Пн-Пт 8:30–18:30'),
                  Text('Суббота 8:30–14:00'),
                  SizedBox(
                    height: 7,
                  ),
                  Text('TЕЛЕФОН'),
                  Text('+996 (552) 57 07 55'),
                  Text('+996 (500) 88 80 51'),
                  Text('+996 (772) 32 76 76')
                ],
              ),
              const SizedBox(
                width: 26.5,
              ),
              const MapWidget(),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Column(
                children: const [
                  Text(
                    'Социальные \nсети',
                    textAlign: TextAlign.start,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
