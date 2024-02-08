import 'package:dujo_kerala_website/view/web/dujo_homePage/home/footer/widgets/footer_text_wid.dart';
import 'package:dujo_kerala_website/view/web/dujo_homePage/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';

class FooterSectionScreen extends StatelessWidget {
  const FooterSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration:  BoxDecoration(  color: Colors.lightBlue[700]),
      height: ResponsiveWebSite.isMobile(context)
          ? 1020
          : ResponsiveWebSite.isTablet(context)
              ? 600
              : 320,
      width: double.infinity,
      child: ResponsiveWebSite.isTablet(context)
          ? const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WhoWeAreWidget(),
                        ConnecWidget(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LegalWidget(),
                        AddressWidget(),
                      ],
                    )
                  ],
                ),
            ),
          )
          : ResponsiveWebSite.isMobile(context)
              ? const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WhoWeAreWidget(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ConnecWidget(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LegalWidget(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AddressWidget(),
                        ],
                      )
                    ],
                  ),
              )
              : const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WhoWeAreWidget(),
                          ConnecWidget(),
                          LegalWidget(),
                          AddressWidget(),
                        ],
                      ),
                    ],
                  ),
              ),
    );
  }
}
