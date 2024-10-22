import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quesso/common/widgets/button/basic_app_button.dart';
import 'package:quesso/core/configs/assets/app_images.dart';
import 'package:quesso/core/configs/assets/app_vectors.dart';
import 'package:quesso/core/configs/theme/app_colors.dart';
import 'package:quesso/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AppImages.introBG,
                    ))),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),
                const Text(
                  "Enjoy Listening to Music",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 21),
                ),
                const SizedBox(height: 23),
                const Text(
                  "Find your favorite artists and their music from around the world and enjoy for free only on Spotify.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => ChooseModePage()));
                    },
                    title: "Get Started")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
