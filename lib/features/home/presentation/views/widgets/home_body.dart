import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nti_task/core/utls/app_images.dart';
import 'package:nti_task/shared%20widgets/custom_button.dart';

import '../../../../../core/utls/app_colors.dart';
import '../../../../../shared widgets/custom_card.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppImages.homeHeadLine, fit: BoxFit.contain),

              const SizedBox(height: 24),

              Wrap(
                spacing: 8,
                children: [
                  Chip(
                    label: Text('Trending', style: TextStyle(color: AppColors.white)),
                    backgroundColor:AppColors.green,
                  ),
                  const Chip(label: Text('By Artist')),
                  const Chip(label: Text('ETH')),
                  const Chip(label: Text('BTC')),
                ],
              ),

            SizedBox(height: MediaQuery.of(context).size.height*0.07),

              Row(
                children: [
                   Text(
                    'Top Collection 🔥',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                   Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon:  Icon(Icons.more_horiz),
                  ),
                ],
              ),

               NFTCard(),
              SizedBox(height: MediaQuery.of(context).size.height*0.05),


              const Text(
                'Best Artist',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.01),
              Row(
                children: [
                  const CircleAvatar(

                    radius: 24,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Darlene Robertson", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("12.5K Followers", style: TextStyle(color: AppColors.grey)),
                    ],
                  ),
                  const Spacer(),
                 CustomButton(color: AppColors.green, text: "Follow",onPressed: (){},)
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}

