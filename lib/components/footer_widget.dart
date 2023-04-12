import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/components/contacts.dart';
import 'package:selim_trade/components/social.dart';
import 'package:selim_trade/resource/app_images.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/feature/home/presentation/blocs/address_cubit/address_cubit.dart';
import 'package:selim_trade/feature/home/presentation/blocs/phones_cubit/phones_cubit.dart';
import 'package:selim_trade/feature/home/presentation/blocs/work_time_cubit/work_time_cubit.dart';
import 'package:selim_trade/api/service_locator.dart';

import 'map.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AddressCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<WorkTimeCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<PhonesCubit>(),
        ),
      ],
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.footerBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppImages.footerLogo,
                  height: 23.55,
                  width: 45.29,
                ),
                const Contacts(),
                const SizedBox(width: 10),
                const Expanded(
                  child: MapWidget(),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 15),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Социальные \nсети',
                        textAlign: TextAlign.start,
                        style: AppTextStyles.s12w500,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Social(),
                    ]),
                const SizedBox(
                  width: 60,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
