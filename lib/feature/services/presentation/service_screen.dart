import 'package:flutter/material.dart';
import 'package:selim_trade/components/custom_app_bar.dart';
import 'package:selim_trade/components/footer_widget.dart';
import 'package:selim_trade/components/question_widget.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/feature/services/presentation/widgets/pop_up_menu.dart';
import 'package:selim_trade/feature/services/presentation/widgets/title_text.dart';
import 'package:selim_trade/theme/app_colors.dart';

import 'widgets/gates_list.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: false,
        title: Image.asset(
          AppImages.logoBlack,
          height: 39,
        ),
        elevation: 0,
        color: Colors.white,
        actions: const [
          ServicePopUp(),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        physics: const ClampingScrollPhysics(),
        children: [
          const TitleText(),
          const SizedBox(
            height: 40,
          ),
           GatesList(),
          const SizedBox(
            height: 40,
          ),
          QuestionWidget(),
          const FooterWidget()
        ],
      ),
    );
  }
}
