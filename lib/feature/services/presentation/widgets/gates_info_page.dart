import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/feature/services/presentation/widgets/pop_up_menu.dart';

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
            SliverLayoutBuilder(builder: (context, constraints) {
              final scrolled = constraints.scrollOffset > 260;
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
                actions: const [
                  ServicePopUp(),
                ],
                backgroundColor: Colors.white,
                expandedHeight: 186,
                toolbarHeight: 50,
                flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    background: Image.asset(
                      AppImages.gateAppbar,
                      fit: BoxFit.fill,
                    ),
                    title: AnimatedOpacity(
                        duration: const Duration(milliseconds: 200),
                        opacity: ctrl.hasClients && ctrl.offset > kToolbarHeight
                            ? 0
                            : 1,
                        child: const Padding(
                          padding: EdgeInsets.only(top: 100),
                          child: Center(
                            child: Text(
                              'ПРОМЫШЛЕННЫЕ СЕКЦИОННЫЕ ВОРОТА',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.s16w800,
                            ),
                          ),
                        ))),
              );
            }),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
            ]))
          ]),
    );
  }
}
