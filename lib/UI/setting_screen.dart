import 'package:animation/UI/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common/constant/color.dart';

class SettingScreen extends StatefulWidget {
   SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  bool isSwitched = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.SkywhiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstant.SkywhiteColor,
        leading: const Text(""),
        title: Text("Setting",style: TextStyle(color:ColorConstant.lightblueColor,fontSize: 22.sp,fontWeight: FontWeight.w500,letterSpacing: 1),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding:EdgeInsets.symmetric(vertical: 20.h,horizontal: 15.w),
          child: Column(
            children: [
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                  },
                  child: setting("Account",Icon(Icons.person))),
              SizedBox(height: 15.h,),
              setting("Appointment Reminder",Icon(Icons.calendar_month)),
              SizedBox(height: 15.h,),
              setting("Preferred Location",Icon(Icons.location_on)),
              SizedBox(height: 15.h,),
              setting("FAQs",Icon(Icons.favorite)),
              SizedBox(height: 15.h,),
              setting("Contact Support",Icon(Icons.wifi_calling_3)),
              SizedBox(height: 15.h,),
              setting("Rating & Reviews",Icon(Icons.star)),
              SizedBox(height: 15.h,),
              setting("Incentive",Icon(Icons.insert_chart)),
              SizedBox(height: 15.h,),
              setting("Notification",Icon(Icons.notifications_rounded)),
              SizedBox(height: 15.h,),
              setting("Log Out",Icon(Icons.logout)),
              SizedBox(height: 15.h,),



            ],
          ),
        ),
      ),
    );
  }

  Widget setting(String type,Icon iconx){
    return Container(
      padding: EdgeInsets.only(left: 10.w),
      width: double.maxFinite,
      height: 45.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: Colors.white
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            child:iconx,
          ),
          SizedBox(width: 20.w,),
          Text(type,style: TextStyle(color:ColorConstant.lightblueColor.withOpacity(0.6),fontWeight: FontWeight.w500,fontSize: 14.sp),)
        ],
      ),
    );
  }
}
