import 'package:cached_network_image/cached_network_image.dart';
import 'package:selim_trade/feature/services/presentation/blocs/gates_cubit/gates_cubit.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/core/router/router.gr.dart';
import 'package:selim_trade/api/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
                loading: () => ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 30,
                        ),
                    itemBuilder: (context, index) => AppShimmerWidget(
                          height: 170,
                          width: 400,
                        )),
                error: (error) => Center(
                  child: Text(error.message),
                ),
                success: (model) => ListView.separated(
                  shrinkWrap: true,
                  clipBehavior: Clip.none,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image:
                                CachedNetworkImageProvider(model[index].image),
                            fit: BoxFit.cover),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.zero,
                            margin: const EdgeInsets.only(top: 145, left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black.withOpacity(0.4),
                            ),
                            child: SizedBox(
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
              );
            },
          )
        ],
      ),
    );
  }
}
