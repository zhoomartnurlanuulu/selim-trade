import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selim_trade/core/constants/app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () async {
            const uri = 'https://instagram.com/selimtrade?igshid=YmMyMTA2M2Y=';
            final url = Uri.parse(uri);
            if (await canLaunchUrl(url)) {
              launchUrl(url);
            } else {
              throw 'Couldn\'t launch $url';
            }
          },
          child: SvgPicture.asset(
            AppIcons.instagram,
            height: 26.3,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        GestureDetector(
          onTap: () async {
            const uri =
                'https://api.whatsapp.com/send/?phone=996552570755&text&type=phone_number&app_absent=0';
            final url = Uri.parse(uri);
            if (await canLaunchUrl(url)) {
              launchUrl(url);
            } else {
              throw 'Couldn\'t launch $url';
            }
          },
          child: SvgPicture.asset(
            AppIcons.whatsapp,
            height: 26.3,
          ),
        )
      ],
    );
  }
}
