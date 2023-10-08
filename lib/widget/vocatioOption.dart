import 'package:flutter/material.dart';

import '../reused_components/listViewCard.dart';
import '../reused_components/promoImg.dart';
import '../routes/rounte_text.dart';

class VocationOption extends StatefulWidget {
  const VocationOption({super.key});

  @override
  State<VocationOption> createState() => _VocationOptionState();
}

class _VocationOptionState extends State<VocationOption> {
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
            height: MediaQuery.of(context).size.height * 0.2, // Sesuaikan dengan tinggi yang Anda inginkan
            child: ListView(
              scrollDirection: Axis.horizontal, // Mengatur scroll ke horizontal
              children: [
                promoImgContainer(imgName: RouteText.jakartaimg),
                promoImgContainer(imgName: RouteText.jogjaimg),
                promoImgContainer(imgName: RouteText.medanimg),
                promoImgContainer(imgName: RouteText.baliimg),
                promoImgContainer(imgName: RouteText.balikpapanimg),
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
              child: Text(RouteText.seeAll,style: TextStyle(color: Colors.blue),),
            ),
          ),
        ),
      ],
    );;
  }
}
