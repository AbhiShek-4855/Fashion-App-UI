import 'package:fashion_u/utils/extension.dart';
import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {
  Widget icon;
  VoidCallback? onTap;
  IntroButton({Key? key,required this.icon,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffF67952),
          borderRadius: BorderRadius.circular(30)
        ),
        child:  Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
            ],
          ),
        ),
      ),
    );
  }
}
