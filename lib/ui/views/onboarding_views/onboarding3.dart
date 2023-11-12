import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter/material.dart';
import 'package:z/shared/colors.dart';
import 'package:z/shared/ui_helpers.dart';
import 'package:z/ui/widgets/dot_item.dart';

// ignore: must_be_immutable
class OnBoarding3 extends StatelessWidget {
  OnBoarding3({Key? key, this.onTap, this.login, this.usersCount}) : super(key: key);
  final Function()? login;
  final Function()? onTap;
  dynamic usersCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/3.png"),
            fit: BoxFit.cover,
          )
      ),
      height: screenHeightPercentage(context, percentage: 1),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          verticalSpaceLarge,
          verticalSpaceLarge,
          const Spacer(),
          SvgPicture.asset('assets/icons/zWhiteLogo.svg'),
          const Spacer(),
          Text('Ready to Begin?'.tr(), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),),
          verticalSpaceMedium,
          Text("Your Z experience is ready! Start your first workout and embrace a healthier".tr(), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700,), textAlign: TextAlign.center),
          verticalSpaceRegular,
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DotItem(condition: false,),
              horizontalSpaceSmall,
              DotItem(condition: false,),
              horizontalSpaceSmall,
              DotItem(condition: true,),
            ],
          ),
          verticalSpaceRegular,
          Container(
            width: MediaQuery.of(context).size.width - 60,
            height: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: kMainColor1,
            ),
            child: Center(
              child: Text('START NOW'.tr(), style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
            ),
          ).gestures(
              onTap: onTap!()
          ),
          verticalSpaceSmall,
          Text('You have already an account? Sign In'.tr(), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),).gestures(
            onTap: login!()
          ),
          verticalSpaceMedium,
        ],
      ),
    );
  }
}
