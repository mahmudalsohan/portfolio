import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/pages/home/components/carousel.dart';
import 'package:portfolio/pages/home/components/cv_section.dart';
import 'package:portfolio/pages/home/components/education_section.dart';
import 'package:portfolio/pages/home/components/footer.dart';
import 'package:portfolio/pages/home/components/header.dart';
import 'package:portfolio/pages/home/components/ios_app_ad.dart';
import 'package:portfolio/pages/home/components/portfolio_stats.dart';
import 'package:portfolio/pages/home/components/skill_section.dart';
import 'package:portfolio/pages/home/components/sponsors.dart';
import 'package:portfolio/pages/home/components/testimonial_widget.dart';
import 'package:portfolio/pages/home/components/website_ad.dart';
import 'package:portfolio/utils/globals.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            const Carousel(),
            const SizedBox(height: 20.0),
            const CvSection(),
            const IosAppAd(),
            const SizedBox(height: 70.0),
            const WebsiteAd(),
            const PortfolioStats(),
            const SizedBox(height: 50.0),
            const EducationSection(),
            const SizedBox(height: 50.0),
            SkillSection(),
            const SizedBox(
              height: 50.0,
            ),
            Sponsors(),
            const SizedBox(
              height: 50.0,
            ),
            TestimonialWidget(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
