import 'package:selim_trade/feature/services/data/model/gates_model.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:flutter/material.dart';

class FlexSpace extends StatelessWidget {
  FlexSpace({Key? key, required this.ctrl, required this.model})
      : super(key: key);
  final ScrollController ctrl;
  GatesModel model;
  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      centerTitle: true,
      collapseMode: CollapseMode.parallax,
      background: Image.network(
        model.image,
        fit: BoxFit.fill,
      ),
      title: AnimatedOpacity(
        duration: const Duration(milliseconds: 200),
        opacity: ctrl.hasClients && ctrl.offset > kToolbarHeight ? 0 : 1,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
          child: Center(
            child: Text(
              model.title,
              textAlign: TextAlign.center,
              style: AppTextStyles.s16w800,
            ),
          ),
        ),
      ),
    );
  }
}
