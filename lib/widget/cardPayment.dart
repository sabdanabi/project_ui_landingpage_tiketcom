import 'package:flutter/material.dart';
import 'package:project_ui_tiketcom/routes/rounte_text.dart';

class CardPayment extends StatefulWidget {
  const CardPayment({super.key});

  @override
  State<CardPayment> createState() => _CardPaymentState();
}

class _CardPaymentState extends State<CardPayment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.0),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), // Warna bayangan dan tingkat transparansi
                spreadRadius: 1, // Menyebarkan bayangan seberapa jauh
                blurRadius: 7, // Mengaburkan bayangan
                offset: Offset(0, 3), // Menggeser bayangan secara horizontal dan vertikal
              ),
            ],
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11.0, vertical: 7.0),
                    child: Container(
                      child: const Row(
                        children: [
                          Icon(
                            Icons.call_to_action,
                            color: Colors.blue,
                            size: 16.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Text(RouteText.bliticket,style: TextStyle(fontSize: 11.0,color: Colors.black54),),
                          )
                        ],
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(right: 80.0),
                    child: Text(RouteText.nol,style: TextStyle(fontSize: 15.0,color: Colors.black),),
                  ),
                ],
              ),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                    child: Container(
                      child: const Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: Colors.blue,
                            size: 16.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0),
                            child: Text(RouteText.payment,style: TextStyle(fontSize: 11.0,color: Colors.black54),),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Text(RouteText.upto,style: TextStyle(fontSize: 11.0,color: Colors.black),),
                ],
              ),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
                    child: Container(
                      child: const Row(
                        children: [
                          Icon(
                            Icons.account_balance_wallet,
                            color: Colors.blue,
                            size: 16.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.0),
                            child: Text(RouteText.blipay,style: TextStyle(fontSize: 11.0,color: Colors.black54),),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const Text(RouteText.active,style: TextStyle(fontSize: 11.0,color: Colors.blue),),
                ],
              )
            ],
          ),
        ),
    );
  }
}
