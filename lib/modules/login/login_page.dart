import 'package:flutter/material.dart';
import 'package:nlw6_payflow/shared/themes/app_colors.dart';
import 'package:nlw6_payflow/shared/themes/app_images.dart';
import 'package:nlw6_payflow/shared/themes/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        child: Stack(
          children: [
            Container(
                height: screenSize.height * 0.36,
                width: screenSize.width,
                color: AppColors.primary),
            Positioned(
                top: 40,
                left: 0,
                right: 0,
                child: Image.asset(
                  AppImages.person,
                  width: 208,
                  height: 300,
                )),
            Positioned(
              bottom: screenSize.height * 0.18,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 70, right: 70),
                    child: Text(
                      "Organize seus boletos em um só lugar",
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}