import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:selim_trade/components/app_error_shimmer.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/feature/home/presentation/blocs/address_cubit/address_cubit.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

LatLng currentLoc = const LatLng(42.848347597623814, 74.58740061363872);

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressCubit, AddressState>(
      builder: (context, state) {
        return state.when(
          initial: () => AppShimmerWidget(
            height: 145,
            width: 145,
            radius: 4.99,
          ),
          error: (error) => AppErrorShimmer(
            height: 145,
            width: 145,
            radius: 4.99,
          ),
          success: (model) => ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            clipBehavior: Clip.none,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 1,
            itemBuilder: (context, index) => Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 9),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: AppColors.color105BFB,
                          blurRadius: 1,
                          spreadRadius: 1),
                    ],
                    borderRadius: BorderRadius.circular(4.99),
                  ),
                  height: 145,
                  width: 145,
                  child: GoogleMap(
                    zoomControlsEnabled: false,
                    myLocationButtonEnabled: false,
                    mapType: MapType.normal,
                    onTap: (argument) async {
                      const uri = 'https://goo.gl/maps/WJYcaegLxLLQoodw5';
                      final url = Uri.parse(uri);
                      if (await canLaunchUrl(url)) {
                        launchUrl(url);
                      }
                    },
                    buildingsEnabled: true,
                    initialCameraPosition: CameraPosition(
                        target: LatLng(
                          double.parse(model[index].latitude),
                          double.parse(model[index].longitude),
                        ),
                        zoom: 17.69),
                  ),
                ),
                Positioned(
                    top: 15,
                    left: 5,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.40)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Адрес',
                              style: TextStyle(
                                  color: AppColors.color414141, fontSize: 9),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              '${model[index].city},${model[index].street} ${model[index].code}',
                              style: const TextStyle(
                                  fontSize: 9, color: AppColors.color414141),
                            )
                          ]),
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
