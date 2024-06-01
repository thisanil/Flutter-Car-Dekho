import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common/constant/color.dart';

class NotificationScreen extends StatelessWidget {
   NotificationScreen({super.key});

  @override
  int month=25;
  int time=10;
  int sec=60;
  String timezone="PM";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.SkywhiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding:  EdgeInsets.only(left: 10.w),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: CircleAvatar(

              radius: 20.r,
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_back_ios_new,size: 20.sp,color:ColorConstant.lightblueColor,),
            ),
          ),
        ),
        title: Text("Notification",style: TextStyle(color:ColorConstant.lightblueColor,fontSize: 22.sp,fontWeight: FontWeight.w500,letterSpacing: 1),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 5.h,),
            ListView.builder(
                physics:const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context,index){
                  sec=sec-3;
                  if(time==0)
                    {
                      time=8;
                      timezone="AM";
                    }
              return Padding(
                padding:EdgeInsets.only(left: 10.w,right: 10.w,top: 10.h),
                child: setting("Feb ${month--} . ${time--}:${sec} ${timezone}","A new model car added to our company ",Icon(Icons.favorite)),
              );
            })
          ],
        ),
      ),
    );
  }
  Widget setting(String type,String type2,Icon iconx){
    return Container(
      padding: EdgeInsets.only(left: 10.w),
      width: double.maxFinite,
      height: 60.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.white
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            child:iconx,
          ),
          SizedBox(width: 20.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(type,style: TextStyle(color:ColorConstant.lightblueColor,fontWeight: FontWeight.w800,fontSize: 14.sp),),
              SizedBox(height: 5.h,),
              Text(type2,style: TextStyle(color:ColorConstant.lightblueColor.withOpacity(0.6),fontSize: 12.sp),),
            ],
          )
        ],
      ),
    );
  }
}
