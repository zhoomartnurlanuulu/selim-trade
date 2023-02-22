// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:selim_trade/components/footer_widget.dart';
import 'widgets/custom_sliver_appbar.dart';
import 'widgets/main_sliver_delegate.dart';
import 'widgets/our_works_widget.dart';
import '../../../components/question_widget.dart';
import 'widgets/service_widget.dart';
import 'widgets/reviews_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: controller,
        physics: const ClampingScrollPhysics(),
        slivers: [
          CustomSliverAppBar(
            controller: controller,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const MainSliverDelegate(),
                const OurWorksWidgets(),
                const ServiceWidget(),
                ReviewsWidget(),
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