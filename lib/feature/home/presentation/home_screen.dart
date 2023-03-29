import 'package:flutter/material.dart';
import 'package:selim_trade/components/footer_widget.dart';
import 'package:selim_trade/components/question_widget.dart';
import 'widgets/custom_sliver_appbar.dart';
import 'widgets/main_sliver_delegate.dart';
import 'widgets/our_works_widget.dart';
import 'widgets/service_widget.dart';
import 'widgets/reviews_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
                const [
                  MainSliverDelegate(),
                  OurWorksWidgets(),
                  ServiceWidget(),
                  ReviewsWidget(),
                  QuestionWidget(),
                  FooterWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
