import 'package:flutter/material.dart';

import '../reused_components/listViewCard.dart';
import '../reused_components/promoImg.dart';
import '../routes/rounte_text.dart';

class PromoOption extends StatefulWidget {
  const PromoOption({super.key});

  @override
  State<PromoOption> createState() => _PromoOptionState();
}

class _PromoOptionState extends State<PromoOption> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 50.0,top: 40.0),
          child: Text(RouteText.check,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19.0),),
        ),

        Container(
          margin: EdgeInsets.only(top: 12.0,right: 13.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Container(
                          constraints: const BoxConstraints(
                            maxWidth: double.infinity, // Lebar maksimum container
                            maxHeight: double.infinity, // Tinggi maksimum container
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.lightBlueAccent,
                          ),
                          child: const Center(
                              child: Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text(RouteText.all,style: TextStyle(color: Colors.white),),
                              )
                          ),
                        ),
                      ),
                      ListViewCard( text: RouteText.flights),
                      ListViewCard( text: RouteText.hotel),
                      ListViewCard( text: RouteText.carRetals),
                      ListViewCard( text: RouteText.vila),
                      ListViewCard( text: RouteText.bus),
                      ListViewCard( text: RouteText.jrPass),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.22,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        promoImgContainer(imgName: RouteText.promo1),
                        promoImgContainer(imgName: RouteText.promo2),
                        promoImgContainer(imgName: RouteText.promo3),
                        promoImgContainer(imgName: RouteText.promo4),
                        promoImgContainer(imgName: RouteText.promo5),
                        promoImgContainer(imgName: RouteText.promo6),
                        promoImgContainer(imgName: RouteText.promo7),
                        promoImgContainer(imgName: RouteText.promo8)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),


        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.045,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
                onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary: Color(0xfff0efef), // Ganti warna latar belakang sesuai yang Anda inginkan
              ),
                child: Text(RouteText.seeAllPromo,style: TextStyle(color: Colors.blue),),
              ),
          ),
        ),
      ],
    );
  }
}
