import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:weather_app/core/utils/app_styles.dart';
import 'package:weather_app/core/widgets/custom_back_ground_container.dart';
import 'package:weather_app/core/widgets/custom_item_back_ground_container.dart';

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({super.key, required this.feelLike, required this.pressure, required this.humidity, required this.speed,});
  final num feelLike,pressure,humidity,speed;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return CustomBackGroundContainer(
      height: height * .85,
      border: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      shadowBox: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4000000059604645),
          offset: const Offset(3, 10),
          blurRadius: 30.0,
        )
      ],
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            leading: InkWell(
              onTap: () => GoRouter.of(context).pop(),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Forecast report',
              style: AppStyles.overpassBold18(context).copyWith(shadows: []),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            AspectRatio(
                aspectRatio: 1,
                child: CustomItemBackGroundContainer(
                    child: Column(
                  children: [
                    Text(
                      'WIND MAP',
                      style: AppStyles.overpassRegular18(context)
                          .copyWith(shadows: []),
                    ),
                    Expanded(
                        child: Container(alignment:Alignment.center,child: Text("Maps are not available now.",textAlign: TextAlign.center,style: AppStyles.overpassBold24(context).copyWith(shadows: []),))
                    ),
                  ],
                ))),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CustomItemBackGroundContainer(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(FontAwesomeIcons.temperatureHigh,color: Colors.white,),
                            const SizedBox(width: 10,),
                            Text(
                              "FEELS LIKE",
                              style: AppStyles.overpassRegular18(context)
                                  .copyWith(shadows: []),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                '${feelLike.round()}',
                                style: AppStyles.overpassRegular72(context)
                                    .copyWith(shadows: []),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CustomItemBackGroundContainer(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(FontAwesomeIcons.droplet,color: Colors.white,),
                            SizedBox(width: 10),
                            Text(
                              "HUMIDITY",
                              style: AppStyles.overpassRegular18(context)
                                  .copyWith(shadows: []),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                '$humidity%',
                                style: AppStyles.overpassRegular72(context)
                                    .copyWith(shadows: []),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CustomItemBackGroundContainer(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.gauge,color: Colors.white,),
                            SizedBox(width: 10),
                            Text(
                              "PRESSURE",
                              style: AppStyles.overpassRegular18(context)
                                  .copyWith(shadows: []),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                '$pressure',
                                style: AppStyles.overpassRegular72(context)
                                    .copyWith(shadows: []),
                              ),
                            ),
                          ),
                        ),
                        Text('mbar',style: AppStyles.overpassBold18(context).copyWith(shadows: []),)
                      ],
                    )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CustomItemBackGroundContainer(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.wind,color: Colors.white,),
                            SizedBox(width: 10),
                            Text(
                              "WIND",
                              style: AppStyles.overpassRegular18(context)
                                  .copyWith(shadows: []),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                '${speed.round()}',
                                style: AppStyles.overpassRegular72(context)
                                    .copyWith(shadows: []),
                              ),
                            ),
                          ),
                        ),
                        Text('KM/H',style: AppStyles.overpassBold18(context).copyWith(shadows: []),)
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ])
                  
              // child: ListView.builder(
              //   shrinkWrap: true,
              //   physics: NeverScrollableScrollPhysics(),
              //   itemCount: 100,
              //   itemBuilder: (context, index) {
              //     return Row(
              //       children: [
              //         CustomItemBackGroundContainer(child: Text("data")),
              //         CustomItemBackGroundContainer(child: Text("data"))
              //       ],
              //     );
              //   },
              // ),
              )
        ],
      ),
    );
  }
}
