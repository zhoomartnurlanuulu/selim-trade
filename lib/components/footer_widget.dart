import 'package:flutter/material.dart';
import 'package:selim_trade/components/contacts.dart';
import 'package:selim_trade/components/navigation_footer.dart';
import 'package:selim_trade/components/social.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';

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
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 65,
              ),
              Contacts(),
              SizedBox(
                width: 45,
              ),
              Flexible(child: MapWidget()),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Социальные \nсети',
                    textAlign: TextAlign.start,
                    style: AppTextStyles.s12w500,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Social(),
                ]),
            const SizedBox(
              width: 60,
            ),
            const FooterNavigation()
          ])
        ],
      ),
    );
  }
}
