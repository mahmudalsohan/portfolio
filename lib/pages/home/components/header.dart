import 'package:flutter/material.dart';
import 'package:portfolio/models/header_item.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

List<HeaderItem> headerItems = [
  HeaderItem(
    title: "HOME",
    onTap: () {},
  ),
  HeaderItem(title: "MY INTRO", onTap: () {}),
  HeaderItem(title: "SERVICES", onTap: () {}),
  HeaderItem(title: "PORTFOLIO", onTap: () {}),
  HeaderItem(title: "TESTIMONIALS", onTap: () {}),
  HeaderItem(title: "BLOGS", onTap: () {}),
  HeaderItem(
    title: "Download CV",
    onTap: () {},
    isButton: true,
  ),
];

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/mahmud-logo.png",
            height: 50,
          ),
        ),
        // child: RichText(
        //   text: TextSpan(
        //     children: [
        //       TextSpan(
        //         text: "Mahmud",
        //         style: GoogleFonts.oswald(
        //           color: Colors.white,
        //           fontSize: 32.0,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //       TextSpan(
        //         text: ".",
        //         style: GoogleFonts.oswald(
        //           color: kSecondaryColor,
        //           fontSize: 36.0,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

class HeaderRow extends StatelessWidget {
  const HeaderRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: const [
        Condition.largerThan(name: MOBILE),
      ],
      child: Row(
        children: headerItems
            .map(
              (item) => item.isButton
                  ? MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        child: TextButton(
                          onPressed: item.onTap,
                          child: Text(
                            item.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  : MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        margin: const EdgeInsets.only(right: 30.0),
                        child: GestureDetector(
                          onTap: item.onTap,
                          child: Text(
                            item.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
            )
            .toList(),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: buildHeader(),
      ),
      // We will make this in a bit
      mobile: buildMobileHeader(),
      tablet: buildHeader(),
    );
  }

  // mobile header
  Widget buildMobileHeader() {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: HeaderLogo(),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     const HeaderLogo(),
        //     // Restart server to make icons work
        //     // Lets make a scaffold key and create a drawer
        //     GestureDetector(
        //       onTap: () {
        //         // Lets open drawer using global key
        //         Globals.scaffoldKey.currentState?.openEndDrawer();
        //       },
        //       child: const Icon(
        //         //FlutterIcons.menu_fea,
        //         Icons.menu,
        //         color: Colors.white,
        //         size: 28.0,
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }

  // Lets plan for mobile and smaller width screens
  Widget buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          HeaderLogo(),
          HeaderRow(),
        ],
      ),
    );
  }
}
