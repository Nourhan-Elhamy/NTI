import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nti_task/core/utls/app_colors.dart';
import 'package:nti_task/core/utls/app_images.dart';
import 'package:nti_task/features/home/presentation/views/home.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppImages.onboardingImage,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
            Image.asset(AppImages.onboardingText,

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                children: [
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.circular(56)
                    ),
                    width: 56,
                    height: 56,
                    child: IconButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (c){
                        return HomeScreen();
                      }));
                    },
                        icon:Icon(Icons.arrow_forward,color: AppColors.white,)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
