import 'package:flutter/material.dart';
import 'package:project_ui_tiketcom/routes/rounte_text.dart';
import 'package:project_ui_tiketcom/widget/menus.dart';
import 'package:project_ui_tiketcom/widget/menusAppBar.dart';
import 'package:project_ui_tiketcom/widget/promoOption.dart';
import 'package:project_ui_tiketcom/widget/cardPayment.dart';
import 'package:project_ui_tiketcom/widget/tourOption.dart';
import 'package:project_ui_tiketcom/widget/vocatioOption.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: AppBar(
                  flexibleSpace: Positioned.fill(
                    child: Image.asset(
                      RouteText.bgappbar,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                child: const Column(
                  children: [
                    MenusAppBar(),
                    CardPayment(),
                    MenusOption(),
                    PromoOption(),
                    TourOption(),
                    VocationOption()
                  ],
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: RouteText.home,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: RouteText.yourOrders,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: RouteText.accout,
            ),
          ],
        ),
      ),
    );
  }
}
