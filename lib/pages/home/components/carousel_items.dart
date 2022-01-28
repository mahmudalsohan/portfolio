import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/models/carousel_item_model.dart';
import 'package:portfolio/utils/constants.dart';

CarouselItemModel mobileCarousel = CarouselItemModel(
  text: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "SOFTWARE ENGINEER",
        style: GoogleFonts.oswald(
          color: kSecondaryColor,
          fontWeight: FontWeight.w900,
          fontSize: 16.0,
        ),
      ),
      const SizedBox(height: 18.0),
      Text(
        "MAHMUD AL SOHAN",
        style: GoogleFonts.oswald(
          color: Colors.white,
          fontSize: 40.0,
          fontWeight: FontWeight.w900,
          height: 1.3,
        ),
      ),
      const SizedBox(height: 10.0),
      const Text(
        "Mobile and Web Application developer",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          height: 1.0,
        ),
      ),
      const SizedBox(height: 50.0),
      const Text(
        "Got a project ?  Let's talk.",
        style: TextStyle(
          color: kCaptionColor,
          fontSize: 12.0,
          height: 1.0,
        ),
      ),
      const SizedBox(height: 5.0),
      InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          height: 48.0,
          width: 160,
          padding: const EdgeInsets.symmetric(
            horizontal: 28.0,
          ),
          child: const Center(
            child: Text(
              "GET STARTED",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      )
    ],
  ),
  image: Image.asset(
    "assets/person.png",
    fit: BoxFit.contain,
  ),
);

CarouselItemModel tabletCarousel = CarouselItemModel(
  text: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        "SOFTWARE ENGINEER",
        style: GoogleFonts.oswald(
          color: kSecondaryColor,
          fontWeight: FontWeight.w900,
          fontSize: 16.0,
        ),
      ),
      const SizedBox(height: 18.0),
      Text(
        "MAHMUD\nAL SOHAN",
        style: GoogleFonts.oswald(
          color: Colors.white,
          fontSize: 40.0,
          fontWeight: FontWeight.w900,
          height: 1.3,
        ),
      ),
      const SizedBox(height: 10.0),
      const Text(
        "Mobile and Web Application developer",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          height: 1.0,
        ),
      ),
      const SizedBox(height: 50.0),
      const Text(
        "Got a project ?  Let's talk.",
        style: TextStyle(
          color: kCaptionColor,
          fontSize: 12.0,
          height: 1.0,
        ),
      ),
      const SizedBox(height: 5.0),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          height: 48.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 28.0,
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "GET STARTED",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      )
    ],
  ),
  image: Image.asset(
    "assets/person.png",
    fit: BoxFit.contain,
  ),
);

CarouselItemModel desktopCarousel = CarouselItemModel(
  text: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        "SOFTWARE ENGINEER",
        style: GoogleFonts.oswald(
          color: kSecondaryColor,
          fontWeight: FontWeight.w900,
          fontSize: 16.0,
        ),
      ),
      const SizedBox(height: 18.0),
      Text(
        "MAHMUD\nAL SOHAN",
        style: GoogleFonts.oswald(
          color: Colors.white,
          fontSize: 40.0,
          fontWeight: FontWeight.w900,
          height: 1.3,
        ),
      ),
      const SizedBox(height: 10.0),
      const Text(
        "Mobile and Web Application developer",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          height: 1.0,
        ),
      ),
      const SizedBox(height: 50.0),
      const Text(
        "Got a project ?  Let's talk.",
        style: TextStyle(
          color: kCaptionColor,
          fontSize: 12.0,
          height: 1.0,
        ),
      ),
      const SizedBox(height: 5.0),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          height: 48.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 28.0,
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "GET STARTED",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      )
    ],
  ),
  image: Image.asset(
    "assets/person.png",
    fit: BoxFit.contain,
  ),
);
