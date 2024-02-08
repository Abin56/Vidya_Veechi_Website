import 'package:dujo_kerala_website/view/web/dujo_homePage/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentsHomePage1 extends StatelessWidget {
  const ContentsHomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Text(
          "About",
          style: GoogleFonts.roboto(
              fontSize: ResponsiveWebSite.isDesktop(context)? 18 :14, fontWeight: ResponsiveWebSite.isDesktop(context)? FontWeight.w500:FontWeight.w400, color: Colors.black),
        ),
      ),
    );
  }
}

class ContentsHomePage2 extends StatelessWidget {
  const ContentsHomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Text(
          "Tution Center",
          style: GoogleFonts.roboto(
              fontSize: ResponsiveWebSite.isDesktop(context)? 18 :14, fontWeight: ResponsiveWebSite.isDesktop(context)? FontWeight.w500:FontWeight.w400, color: Colors.black),
        ),
      ),
    );
  }
}

class ContentsHomePage3 extends StatelessWidget {
  const ContentsHomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Text(
          "Syllabus",
          style: GoogleFonts.roboto(
              fontSize: ResponsiveWebSite.isDesktop(context)? 18 :14, fontWeight: ResponsiveWebSite.isDesktop(context)? FontWeight.w500:FontWeight.w400, color: Colors.black),
        ),
      ),
    );
  }
}

class ContentsHomePage4 extends StatelessWidget {
  const ContentsHomePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Text(
          "Mock Test",
          style: GoogleFonts.roboto(
              fontSize: ResponsiveWebSite.isDesktop(context)? 18 :14, fontWeight: ResponsiveWebSite.isDesktop(context)? FontWeight.w500:FontWeight.w400, color: Colors.black),
        ),
      ),
    );
  }
}

class ContentsHomePage5 extends StatelessWidget {
  const ContentsHomePage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Text(
          "Previous Qn",
          style: GoogleFonts.roboto(
              fontSize: ResponsiveWebSite.isDesktop(context)? 18 :14, fontWeight: ResponsiveWebSite.isDesktop(context)? FontWeight.w500:FontWeight.w400, color: Colors.black),
        ),
      ),
    );
  }
}
