import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nti_task/core/utls/app_colors.dart';
import 'package:nti_task/core/utls/app_images.dart';
import 'package:nti_task/shared%20widgets/custom_button.dart';

class NftDetailScreen extends StatelessWidget {
  const NftDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {

              Navigator.pop(context);
            }
        ),
      ),
      backgroundColor: AppColors.white,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              SizedBox(height: MediaQuery.of(context).size.height*0.02),

             
              Center(

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                     AppImages.detailsImage,
                      height:329,
                      width: 311,
                    
                                    ),
                  ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02),

              // ID and Title
              Text(
                '#14415',
                style: TextStyle(
                  color: AppColors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.01),
               Row(
                 children: [
                   Text(
                    'Hypebest Apes B',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                                 ),
                   Spacer(),
                   Image.asset(AppImages.crown)
                 ],

               ),

              SizedBox(height: MediaQuery.of(context).size.height*0.02),


              Row(
                children: [
                  const Icon(Icons.access_time, size: 18),
                  const SizedBox(width: 5),
                  Text(
                    'Ends in 1h 23m 32s',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.02),
            Divider(),
              Text(
                'Description',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02),
              Text(
                'Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.',
                style: TextStyle(
                  fontSize: 17,
                  color: AppColors.grey,
                ),
              ),

              const Spacer(),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        'Price',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.001),
                      Text(
                        '2.23 ETH',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),


                  CustomButton(onPressed: (){},color: AppColors.black,image: AppImages.judge,)
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.06),

            ],
          ),
        ),

    );
  }
}
