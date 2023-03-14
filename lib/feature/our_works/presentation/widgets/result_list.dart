import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/feature/our_works/presentation/blocs/our_works_cubit/our_works_cubit.dart';
import 'package:selim_trade/api/service_locator.dart';

class ResultList extends StatelessWidget {
  const ResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<OurWorksCubit>(),
      child: BlocBuilder<OurWorksCubit, OurWorksState>(
        builder: (context, state) {
          return state.when(
            loading: () => SizedBox(
              height: 2240,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => AppShimmerWidget(
                  width: 340,
                  height: 200,
                  radius: 10,
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
              ),
            ),
            error: (error) => Center(
              child: Text(error.message),
            ),
            success: (model) => SizedBox(
              height: 2240,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  width: 320,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(model[index].image ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
                itemCount: model.length,
              ),
            ),
          );
        },
      ),
    );
  }
}
