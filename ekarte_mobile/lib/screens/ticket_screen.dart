import 'package:ekarte_mobile/utils/app_layout.dart';
import 'package:ekarte_mobile/widgets/tickets_tab.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getWidth(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets",
                  style: Styles.headLineStyle1.copyWith(fontSize: 35)),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(rightText: "Upcoming", leftText: "Previous")
            ],
          ),
        ],
      ),
    );
  }
}
