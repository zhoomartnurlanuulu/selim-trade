import 'package:selim_trade/feature/services/presentation/widgets/title_text.dart';
import 'package:selim_trade/feature/services/presentation/widgets/pop_up_menu.dart';
import 'package:selim_trade/components/question_widget.dart';
import 'package:selim_trade/components/custom_app_bar.dart';
import 'package:selim_trade/components/footer_widget.dart';
import 'package:selim_trade/resource/app_images.dart';
import 'package:flutter/material.dart';
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
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        children: const [
          TitleText(),
          SizedBox(
            height: 40,
          ),
          GatesList(),
          SizedBox(
            height: 40,
          ),
          QuestionWidget(),
          FooterWidget()
        ],
      ),
    );
  }
}
