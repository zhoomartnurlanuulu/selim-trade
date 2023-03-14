import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selim_trade/resource/app_icons.dart';
import 'package:selim_trade/resource/app_images.dart';
import 'package:selim_trade/resource/app_text_style.dart';

showAppDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          titlePadding: const EdgeInsets.only(top: 10, right: 10),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  context.router.pop();
                },
                child: const Icon(
                  Icons.close,
                  size: 25,
                ),
              )
            ],
          ),
          contentPadding: EdgeInsets.zero,
          content: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset(
                AppImages.baa,
                height: 220,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 123,
                child: Column(
                  children: [
                    SvgPicture.asset(
                      AppIcons.requestIcon,
                      height: 50,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Заявка успешно \nотправлена',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.s11w600,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Ваша заявка отправлена рассмотрение. \nВ ближайшее время с вами свяжется наш специалист',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.s12w400,
                    )
                  ],
                ),
              )
            ],
          ),
        );
      });
}
