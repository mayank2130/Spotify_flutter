import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quesso/common/helpers/is_dark_mode.dart';
import 'package:quesso/common/widgets/appbar/app_bar.dart';
import 'package:quesso/common/widgets/button/basic_app_button.dart';
import 'package:quesso/core/configs/assets/app_images.dart';
import 'package:quesso/core/configs/assets/app_vectors.dart';
import 'package:quesso/core/configs/theme/app_colors.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const BasicAppBar(),
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(AppVectors.topPattern),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset(AppVectors.bottomPattern),
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.authBG)),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppVectors.logo),
                const SizedBox(height: 55),
                const Text(
                  "Enjoy Listening to Music",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const SizedBox(height: 21),
                const Text(
                  "Spotify is a proprietary Sewdish audio streaming and media service provider",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child:
                          BasicAppButton(onPressed: () {}, title: "Register"),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: context.isDarkMode? Colors.white : Colors.black),
                          )
                        ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}