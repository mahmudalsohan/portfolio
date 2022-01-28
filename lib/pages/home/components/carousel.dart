import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/home/components/carousel_items.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      // Responsive views
      desktop: _buildDesktop(
        context,
        desktopCarousel.text,
        desktopCarousel.image,
      ),
      tablet: _buildTablet(
        context,
        tabletCarousel.text,
        tabletCarousel.image,
      ),
      mobile: _buildMobile(
        context,
        mobileCarousel.text,
        mobileCarousel.image,
      ),
    );
  }
}

// Big screens
Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: text,
          ),
          Expanded(
            child: image,
          )
        ],
      ),
    ),
  );
}

// Mid screens
Widget _buildTablet(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kTabletMaxWidth,
      minWidth: kTabletMaxWidth,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: text,
          ),
          Expanded(
            child: image,
          )
        ],
      ),
    ),
  );
}

// SMall Screens

Widget _buildMobile(BuildContext context, Widget text, Widget image) {
  return ResponsiveWrapper(
    maxWidth: getMobileMaxWidth(context),
    minWidth: getMobileMaxWidth(context),
    defaultScale: false,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: text,
        ),
        const SizedBox(height: 50),
        SizedBox(
          child: image,
          height: 300,
        ),
        const SizedBox(height: 50),
      ],
    ),
  );
}
