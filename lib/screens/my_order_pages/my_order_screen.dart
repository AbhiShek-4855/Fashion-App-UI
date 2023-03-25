import 'package:flutter/material.dart';

import '../../constant/app_color.dart';
import 'completed_tab_bar.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Column(
        children: [
          SizedBox(height: height / 19),
          const Center(child: Text("My Orders", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),)),
          _tabSection(context)
        ],
      ),
    );
  }
  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TabBar(
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 5.0,color: AppColor.appColor),
                  insets: const EdgeInsets.symmetric(horizontal:16.0),
              ),
            labelColor: Colors.red,
            labelStyle: const TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
            unselectedLabelColor: const Color(0xff837F7F),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400,fontSize: 14),

            // indicatorPadding: EdgeInsets.symmetric(vertical: ),
            indicatorSize: TabBarIndicatorSize.tab,
              // indicator: BoxDecoration(
              //   borderRadius: BorderRadius.circular(12),
              // ),
              labelPadding: const EdgeInsets.symmetric(horizontal: 5.0),
              tabs: const [
             Tab(text: "Completed",),
             Tab(text: "Cancelled"),
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.32,
            //Add this to give height
            // height: MediaQuery.of(context).size.height,
            child:  const TabBarView(children: [
              CompletedTabBar(),
              CompletedTabBar(),
            ]),
          ),
        ],
      ),
    );
  }
}
