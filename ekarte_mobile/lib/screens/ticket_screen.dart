import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:barcode_widget/barcode_widget.dart';

import 'package:ekarte_mobile/screens/ticket_view.dart';
import 'package:ekarte_mobile/utils/app_info_list.dart';
import 'package:ekarte_mobile/utils/app_layout.dart';
import 'package:ekarte_mobile/widgets/column_layout.dart';
import 'package:ekarte_mobile/widgets/tickets_tab.dart';

import '../utils/app_styles.dart';
import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getWidth(20)),
            children: [
              SizedBox(height: AppLayout.getHeight(40)),
              Text("Tickets",
                  style: Styles.headLineStyle1.copyWith(fontSize: 35)),
              SizedBox(height: AppLayout.getHeight(20)),
              const AppTicketTabs(rightText: "Upcoming", leftText: "Previous"),
              SizedBox(height: AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              SizedBox(height: AppLayout.getHeight(1)),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(20)),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                color: Colors.white,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: '5221 364869',
                          secondText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    SizedBox(height: AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    SizedBox(height: AppLayout.getHeight(20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: '4444 444 55555',
                          secondText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: 'AF558S',
                          secondText: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    SizedBox(height: AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  scale: 11,
                                ),
                                Text(
                                  " *** 2263",
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            SizedBox(height: AppLayout.getHeight(5)),
                            Text(
                              "Payment method",
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const Column(
                          children: [
                            AppColumnLayout(
                              firstText: '\$319.99',
                              secondText: 'Price',
                              alignment: CrossAxisAlignment.end,
                              isColor: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppLayout.getHeight(1)),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      AppLayout.getHeight(21),
                    ),
                    bottomRight: Radius.circular(
                      AppLayout.getHeight(21),
                    ),
                  ),
                ),
                margin: EdgeInsets.only(
                    left: AppLayout.getHeight(15),
                    right: AppLayout.getHeight(15)),
                padding: EdgeInsets.only(
                    top: AppLayout.getHeight(15),
                    bottom: AppLayout.getHeight(15)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
