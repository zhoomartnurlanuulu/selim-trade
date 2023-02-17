import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';

class OurWorksWidgets extends StatefulWidget {
  const OurWorksWidgets({super.key});

  @override
  State<OurWorksWidgets> createState() => _OurWorksWidgetsState();
}

class _OurWorksWidgetsState extends State<OurWorksWidgets> {
  final ctrl = PageController(initialPage: 1, viewportFraction: 0.7);
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            'Наши работы',
            style: AppTextStyles.s16w700,
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            controller: ctrl,
            itemCount: 4,
            itemBuilder: (context, index) {
              bool active = index == currentPage;
              return _buildStoryPage(active);
            },
          ),
        ),
        const SizedBox(
          height: 60,
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    ctrl.addListener(() {
      int pos = ctrl.page!.round();
      if (currentPage != pos) {
        {
          setState(() {
            currentPage = pos;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }

  _buildStoryPage(bool active) {
    final double top = active ? 1 : 30;
    final double bottom = active ? 1 : 20;

    return AnimatedContainer(
      height: 161,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(top: top, right: 22.4, bottom: bottom),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.96),
        image: const DecorationImage(
            image: AssetImage(AppImages.gateWork), fit: BoxFit.fill),
      ),
    );
  }
}
