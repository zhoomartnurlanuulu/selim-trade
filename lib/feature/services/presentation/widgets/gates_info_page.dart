import 'package:flutter/material.dart';
import 'package:selim_trade/components/footer_widget.dart';
import 'package:selim_trade/components/question_widget.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/feature/services/presentation/widgets/advantages.dart';
import 'package:selim_trade/feature/services/presentation/widgets/gate_info_title.dart';
import 'package:selim_trade/feature/services/presentation/widgets/type_of_gate.dart';
import 'package:selim_trade/theme/app_colors.dart';

import 'services_appbar.dart';

class GateInfoPage extends StatelessWidget {
  GateInfoPage({super.key});
  final ctrl = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        controller: ctrl,
        slivers: [
          ServicesAppBar(
            
            ctrl: ctrl,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const GateInfoTitle(),
                const TypeOfGate(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        'Основные преимущества',
                        style: AppTextStyles.s16w700.copyWith(
                          color: AppColors.color414141,
                        ),
                      ),
                      const SizedBox(
                        height: 39,
                      ),
                      const AdvantagesWidget(),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                const QuestionWidget(),
                const FooterWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
