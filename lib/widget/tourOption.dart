import 'package:flutter/material.dart';

import '../reused_components/listViewCard.dart';
import '../reused_components/tourCard.dart';
import '../routes/rounte_text.dart';

class TourOption extends StatefulWidget {
  const TourOption({super.key});

  @override
  State<TourOption> createState() => _TourOptionState();
}

class _TourOptionState extends State<TourOption> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 50.0,top: 40.0),
          child: Text(RouteText.check,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19.0),),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 12.0,top: 10.0),
          child: Row(
            children: [
              Container(
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
                        child: Text(RouteText.indonesia,style: TextStyle(color: Colors.white),),
                      )
                  ),
                ),
              ListViewCard( text: RouteText.internasional),
              ListViewCard( text: RouteText.influencer),
            ],
          ),
        ),


        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.31, // Sesuaikan dengan tinggi yang Anda inginkan
            child: ListView(
              scrollDirection: Axis.horizontal, // Mengatur scroll ke horizontal
              children: [
                tourCard(
                  imgName: RouteText.ancolimg,
                  title: RouteText.titleTour1,
                  addres: RouteText.addresTour1,
                  review: RouteText.reviewTour1,
                  price: RouteText.priceTour1,
                ),
                tourCard(
                  imgName: RouteText.dufanimg,
                  title: RouteText.titleTour1,
                  addres: RouteText.addresTour1,
                  review: RouteText.reviewTour1,
                  price: RouteText.priceTour1,
                ),
                tourCard(
                  imgName: RouteText.aquariumimg,
                  title: RouteText.titleTour1,
                  addres: RouteText.addresTour1,
                  review: RouteText.reviewTour1,
                  price: RouteText.priceTour1,
                ),
                tourCard(
                  imgName: RouteText.opiimg,
                  title: RouteText.titleTour1,
                  addres: RouteText.addresTour1,
                  review: RouteText.reviewTour1,
                  price: RouteText.priceTour1,
                ),
              ],
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
              child: Text(RouteText.seeAllToDos,style: TextStyle(color: Colors.blue),),
            ),
          ),
        ),
      ],
    );
  }
}
