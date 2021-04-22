import 'package:devquiz/shared/constants/app_colors.dart';
import 'package:devquiz/shared/constants/app_gradients.dart';
import 'package:devquiz/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../shared/extensions/screen_util_extension.dart';

class HomePage extends StatelessWidget {
  double porcentagem = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          height: 160.height,
          padding: EdgeInsets.symmetric(horizontal: 20.width),
          decoration: BoxDecoration(gradient: AppGradients.linear),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Olá, ',
                        style: GoogleFonts.notoSans(
                          color: Colors.white,
                          fontSize: 20.sp,
                        ),
                      ),
                      TextSpan(
                        text: 'Bernardo',
                        style: GoogleFonts.notoSans(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    height: 50.height,
                    width: 50.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/56937988?s=400&u=cf67cf7b78fc452958f03c63b16f29bb91881449&v=4'),
                      ),
                      borderRadius: BorderRadius.circular(10.radius),
                      border: Border.all(
                        color: AppColors.purple,
                        width: 2.width,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 125.height,
                child: Container(
                  height: 136.height,
                  width: MediaQuery.of(context).size.width - 40,
                  padding: EdgeInsets.symmetric(horizontal: 40.width),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15.radius),
                    border: Border.all(
                      color: AppColors.border,
                      width: 2.width,
                    ),
                  ),
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 80.height,
                            width: 80.width,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.chartPrimary,
                              ),
                              strokeWidth: 10.width,
                              value: porcentagem / 100,
                              backgroundColor: AppColors.chartSecondary,
                            ),
                          ),
                          Text(
                            '${porcentagem.toInt()}%',
                            style: AppTextStyles.heading,
                          ),
                        ],
                      ),
                      SizedBox(width: 24.width),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bom resultado',
                            style: AppTextStyles.heading,
                          ),
                          SizedBox(height: 5.height),
                          Text(
                            'Seu conhecimento está\nsendo aprimorado :)',
                            style: AppTextStyles.body,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(160.height),
      ),
    );
  }
}
