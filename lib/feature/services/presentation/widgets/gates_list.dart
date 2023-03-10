import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/feature/services/presentation/blocs/gates_cubit/gates_cubit.dart';
import 'package:selim_trade/router/router.gr.dart';
import 'package:selim_trade/server/service_locator.dart';

class GatesList extends StatelessWidget {
  const GatesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GatesCubit>(),
      child: Column(
        children: [
          BlocBuilder<GatesCubit, GatesState>(
            builder: (context, state) {
              return state.when(
                loading: () => SizedBox(
                  height: 800,
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 30,
                          ),
                      itemBuilder: (context, index) => AppShimmerWidget(
                            height: 170,
                            width: 339,
                          )),
                ),
                error: (error) => Center(
                  child: Text(error.message),
                ),
                success: (model) => SizedBox(
                  height: 1988,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 30,
                    ),
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        context.router
                            .push(GateInfoPageRoute(model: model[index]));
                      },
                      child: Container(
                        height: 170,
                        width: 339,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(model[index].image),
                              fit: BoxFit.cover),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 150, left: 9),
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.black.withOpacity(0.2),
                              ),
                              child: SizedBox(
                                width: 190,
                                child: Text(
                                  model[index].title,
                                  textAlign: TextAlign.left,
                                  style: AppTextStyles.s12w800
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    itemCount: model.length,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
