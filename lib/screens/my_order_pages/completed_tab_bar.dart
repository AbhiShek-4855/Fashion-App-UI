import 'package:fashion_u/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modal/shirt_modal.dart';

class CompletedTabBar extends StatelessWidget {
  const CompletedTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(myOrderList.length, (index) => Container(
          height: 92,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Row(
            children: [
              Container(
                height: 73,
                width: 84,
                decoration: BoxDecoration(
                  color: myOrderList[index].backColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Image.asset(myOrderList[index].image.toString()),
                ),
              ),
              5.0.addWSpace(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(myOrderList[index].title.toString(),style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 14,fontWeight: FontWeight.w400),),
                  Text(myOrderList[index].price.toString(),style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                ],
              ),
              const Spacer(),
              Text(myOrderList[index].dateTime.toString(),style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(0, 0, 0, 0.5)),)
            ],
          ).marginSymmetric(horizontal: 5),
        ).marginAll(8)),
      ),
    );
  }
}
