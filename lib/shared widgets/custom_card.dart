import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/utls/app_colors.dart';
import '../core/utls/app_images.dart';
import '../features/home/presentation/views/widgets/details_screen.dart';
import 'custom_button.dart';

class NFTCard extends StatelessWidget {
  const NFTCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(AppImages.homeImage, height: 187, width: double.infinity, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Hypebest Apes G',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(Icons.access_time, size: 16, color: AppColors.grey),

                        Text('Ends in ', style: TextStyle(color: AppColors.grey)),
                      ],
                    ),

                    Text(' 1h 23m 32s', style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold)),
                  ],
                ),

                Divider(),

                SizedBox(height: MediaQuery.of(context).size.height*0.01),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,


                  children:  [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text('Highest Bid Today', style: TextStyle(fontSize: 12, color:AppColors.grey)),
                        SizedBox(height: 4),
                        Text('2.23 ETH', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Spacer(),
                    SizedBox(
                        width: 150,
                        height: 40,
                        child: CustomButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (c){
                            return NftDetailScreen();
                          }));
                        }, color: AppColors.black,image:AppImages.judge, text: 'Place Bid',)
                    ),


                  ],
                ),



              ],
            ),
          )
        ],
      ),
    );
  }
}
