import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/feature/services/presentation/blocs/gates_cubit/gates_cubit.dart';
import 'package:selim_trade/server/service_locator.dart';
import 'package:selim_trade/theme/app_colors.dart';

class TypeOfGate extends StatelessWidget {
  const TypeOfGate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GatesCubit>(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ТИПЫ ВОРОТ',
              style:
                  AppTextStyles.s16w800.copyWith(color: AppColors.color414141),
            ),
            BlocBuilder<GatesCubit, GatesState>(
              builder: (context, state) {
                return state.when(
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  error: (error) => Center(
                    child: Text(error.message),
                  ),
                  success: (model) => SizedBox(
                    height: 1040,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Container(
                        height: 172,
                        width: 287,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image:
                                CachedNetworkImageProvider(model[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 127, left: 10),
                              child: Text(
                                model[index].title,
                                style: AppTextStyles.s14w800
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                      itemCount: 5,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
