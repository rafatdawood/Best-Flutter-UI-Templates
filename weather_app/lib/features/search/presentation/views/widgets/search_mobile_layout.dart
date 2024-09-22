import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:weather_app/core/utils/app_styles.dart';
import 'package:weather_app/core/widgets/custom_back_ground_container.dart';

import 'custom_text_field.dart';

class SearchMobileLayout extends StatefulWidget {
  const SearchMobileLayout({super.key});

  @override
  State<SearchMobileLayout> createState() => _SearchMobileLayoutState();
}

class _SearchMobileLayoutState extends State<SearchMobileLayout> {
  late CameraPosition initialCameraPosition;

  @override
  void initState() {
    initialCameraPosition = CameraPosition(target: LatLng(50, 50), zoom: 10);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        child: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () => GoRouter.of(context).pop(),
              child: const Icon(Icons.arrow_back)),
          const SizedBox(height: 20),
          const CustomTextField(
            hint: 'Search here',
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(alignment:Alignment.center,child: Text("Maps are not available now.",textAlign: TextAlign.center,style: AppStyles.overpassBold24(context),))
          ),
        ],
      ),
    ));
  }
}
