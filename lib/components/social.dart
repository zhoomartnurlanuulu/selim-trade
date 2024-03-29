import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selim_trade/components/app_error_shimmer.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/feature/home/presentation/blocs/social_media_cubit/social_media_cubit.dart';
import 'package:selim_trade/api/service_locator.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SocialMediaCubit>(),
      child: BlocBuilder<SocialMediaCubit, SocialMediaState>(
        builder: (context, state) {
          return state.when(
              initial: () => Row(
                    children: [
                      AppShimmerWidget(
                        height: 30,
                        width: 30,
                        radius: 5,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      AppShimmerWidget(
                        height: 30,
                        width: 30,
                        radius: 5,
                      ),
                    ],
                  ),
              error: (error) => Row(
                    children: [
                      AppErrorShimmer(
                        height: 30,
                        width: 30,
                        radius: 5,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      AppErrorShimmer(
                        height: 30,
                        width: 30,
                        radius: 5,
                      ),
                    ],
                  ),
              success: (model) => SizedBox(
                    height: 32,
                    width: 71,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      final uri = model[index].link;
                                      final url = Uri.parse(uri);
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(
                                          url,
                                          mode: LaunchMode.externalApplication,
                                        );
                                      } else {
                                        throw 'Couldn\'t launch $url';
                                      }
                                    },
                                    child: SvgPicture.network(
                                      model[index].icon,
                                      height: 26.3,
                                    ),
                                  ),
                                ]),
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 10,
                            ),
                        itemCount: model.length),
                  ));
        },
      ),
    );
  }
}
