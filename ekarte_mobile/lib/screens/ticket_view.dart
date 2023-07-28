import 'package:ekarte_mobile/utils/app_layout.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Container(
          margin: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "NYC",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        ThickContainer(),
                        Expanded(
                          child: SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  print(
                                      "The widht is ${constraints.constrainWidth()}");
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => const SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white)),
                                            )),
                                  );
                                },
                              )),
                        ),
                        Transform.rotate(
                          angle: 1.5,
                          child: Icon(
                            Icons.local_airport_rounded,
                            color: Colors.white,
                          ),
                        ),
                        ThickContainer(),
                        Expanded(
                          child: Container(),
                        ),
                        Text(
                          "London",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
