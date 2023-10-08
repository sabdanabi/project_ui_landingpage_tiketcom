import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../routes/rounte_text.dart';

class MenusAppBar extends StatefulWidget {
  const MenusAppBar({super.key});

  @override
  State<MenusAppBar> createState() => _MenusAppBarState();
}

class _MenusAppBarState extends State<MenusAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10.0, vertical: 35.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: double.infinity,
                maxHeight: 30.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: RouteText.cari,
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 22.0,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 7.0, vertical: 7.0),
                child: Icon(
                  Icons.mail_sharp,
                  color: Colors.black54,
                  size: 20.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 7.0),
                child: Row(
                  children: [
                    Transform.rotate(
                      angle: 65 * math.pi / 180,
                      child: const Icon(
                        Icons.discount_sharp,
                        color: Colors.black54,
                        size: 20.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 5.0),
                      child: Text(
                        RouteText.promo,
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
