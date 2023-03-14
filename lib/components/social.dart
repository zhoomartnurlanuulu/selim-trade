import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              initial: () => const SizedBox(),
              error: (error) => Center(
                    child: Text(error.message),
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
                                        launchUrl(url);
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
                              width: 12,
                            ),
                        itemCount: model.length),
                  ));
        },
      ),
    );
  }
}
