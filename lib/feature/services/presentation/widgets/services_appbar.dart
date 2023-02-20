import 'package:flutter/material.dart';

import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/feature/services/presentation/widgets/flexible_gate_space.dart';
import 'package:selim_trade/feature/services/presentation/widgets/gates_info_pop_up.dart';

class ServicesAppBar extends StatelessWidget {
  const ServicesAppBar({
    Key? key,
    required this.ctrl,
  }) : super(key: key);
  final ScrollController ctrl;
  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
      builder: (context, constraints) {
        final scrolled = constraints.scrollOffset > 100;
        return SliverAppBar(
            pinned: true,
            centerTitle: false,
            title: scrolled
                ? Image.asset(
                    AppImages.logoBlack,
                    height: 39,
                  )
                : Image.asset(
                    AppImages.logo,
                    height: 39,
                  ),
            actions: [
              GateInfoPopUp(constraints: constraints),
            ],
            backgroundColor: Colors.white,
            expandedHeight: 186,
            toolbarHeight: 50,
            flexibleSpace: FlexSpace(
              ctrl: ctrl,
            ));
      },
    );
  }
}
