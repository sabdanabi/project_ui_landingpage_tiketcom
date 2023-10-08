import 'package:flutter/material.dart';

import '../routes/rounte_text.dart';
import '../reused_components/customCard.dart';

class MenusOption extends StatefulWidget {
  const MenusOption({super.key});

  @override
  State<MenusOption> createState() => _MenusOptionState();
}

class _MenusOptionState extends State<MenusOption> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                CustomCard( text: RouteText.flights,
                  icon: Icons.airplane_ticket_outlined,),

                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: CustomCard( text: RouteText.hotel,
                    icon: Icons.apartment,),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: CustomCard( text: RouteText.carRetals,
                    icon: Icons.car_rental,),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: CustomCard( text: RouteText.vila,
                    icon: Icons.villa_outlined,),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                children: [
                  CustomCard( text: RouteText.bus,
                    icon: Icons.directions_bus,),

                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: CustomCard( text: RouteText.jrPass,
                      icon: Icons.directions_train_rounded,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 35.0,right: 33.0),
                    child: CustomCard( text: RouteText.taxi,
                      icon: Icons.local_taxi_outlined,),
                  ),

                   CustomCard( text: RouteText.moreOption,
                      icon: Icons.more_horiz,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
