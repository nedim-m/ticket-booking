import 'package:flutter/material.dart';

import 'package:ekarte_mobile/utils/app_layout.dart';
import 'package:ekarte_mobile/widgets/icon_text_widget.dart';
import 'package:ekarte_mobile/widgets/double_text_widget.dart';
import 'package:ekarte_mobile/widgets/tickets_tab.dart';

import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          SizedBox(height: AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          SizedBox(height: AppLayout.getHeight(20)),
          const AppTicketTabs(leftText: "Airline tickets", rightText: "Hotels"),
          SizedBox(height: AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height: AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arival"),
          SizedBox(height: AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(18),
                horizontal: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(10),
              ),
            ),
            child: Center(
              child: Text(
                "Find tickets",
                style: Styles.textStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: AppLayout.getHeight(40)),
          const AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View all"),
          SizedBox(height: AppLayout.getHeight(25)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: null,
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(12),
                    horizontal: AppLayout.getWidth(12)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(children: [
                  Container(
                    height: AppLayout.getHeight(190),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(12)),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/sit.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: AppLayout.getHeight(12)),
                  Text(
                      "20% discount on the early booking of this fligth. Don't miss out this chance",
                      style: Styles.headLineStyle2),
                ]),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: null,
                        decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: AppLayout.getHeight(10)),
                              Text(
                                "Take the survey about our services and and get discount",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                            ]),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: AppLayout.getWidth(18),
                                  color: const Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: AppLayout.getHeight(10)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(190),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color(0xFFEC6545)),
                    child: Column(children: [
                      Text(
                        "Test test",
                        style: Styles.headLineStyle2.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: AppLayout.getHeight(5)),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: ':P', style: TextStyle(fontSize: 38)),
                            TextSpan(
                                text: ':)', style: TextStyle(fontSize: 50)),
                            TextSpan(
                                text: '*-)', style: TextStyle(fontSize: 38)),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
