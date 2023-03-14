import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
          initial: () => const SizedBox(),
          error: (error) => Center(
            child: Text(error.message),
          ),
          success: (model) => SizedBox(
            height: 145,
            width: 195,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              clipBehavior: Clip.none,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 1,
              itemBuilder: (context, index) => Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: AppColors.color105BFB,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 135,
                    width: 175,
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
                          zoom: 17),
                    ),
                  ),
                  Positioned(
                      bottom: 5,
                      left: 5,
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.grey[350]),
                      )),
                  Positioned(
                      bottom: 5,
                      left: 5,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1),
                            color: Colors.white.withOpacity(0.4)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Адрес',
                                style: TextStyle(
                                    color: AppColors.color414141, fontSize: 8),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                '${model[index].city},${model[index].street} ${model[index].code}',
                                style: const TextStyle(
                                    fontSize: 8, color: AppColors.color414141),
                              )
                            ]),
                      ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
