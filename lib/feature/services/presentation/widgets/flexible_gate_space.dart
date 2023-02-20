import 'package:flutter/material.dart';

import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';

class FlexSpace extends StatelessWidget {
  const FlexSpace({
    Key? key,
    required this.ctrl,
  }) : super(key: key);
  final ScrollController ctrl;

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      collapseMode: CollapseMode.parallax,
      background: Image.asset(
        AppImages.gateAppbar,
        fit: BoxFit.fill,
      ),
      title: AnimatedOpacity(
        duration: const Duration(milliseconds: 200),
        opacity: ctrl.hasClients && ctrl.offset > kToolbarHeight ? 0 : 1,
        child: const Padding(
          padding: EdgeInsets.only(top: 100),
          child: Center(
            child: Text(
              'ПРОМЫШЛЕННЫЕ СЕКЦИОННЫЕ ВОРОТА',
              textAlign: TextAlign.center,
              style: AppTextStyles.s16w800,
            ),
          ),
        ),
      ),
    );
  }
}
