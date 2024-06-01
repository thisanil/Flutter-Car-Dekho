import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common/constant/color.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  int month=30;
  int ammount=100;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.SkywhiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Text(""),
        title: Text("Wallet",style: TextStyle(color:ColorConstant.lightblueColor,fontSize: 22.sp,fontWeight: FontWeight.w500,letterSpacing: 1),),
        centerTitle: true,
      ),
    body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.h,),
            Text("Available balance",style: TextStyle(color:Colors.grey,fontSize: 13.sp,fontWeight: FontWeight.w600)),
            SizedBox(height: 5.h,),
            Text("₹ 7,20,980 ",style: TextStyle(color:ColorConstant.lightblueColor,fontSize: 22.sp,fontWeight: FontWeight.w800,letterSpacing: 1)),
           SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Card",style: TextStyle(color:ColorConstant.lightblueColor,fontSize: 20.sp,fontWeight: FontWeight.w600,letterSpacing: 0)),
               const CircleAvatar(
                  backgroundColor: Colors.white,
                  child:Icon(Icons.add),
                ),
              ],
            ),

          Image.asset("assets/c2.png",height: 200.h,),
            Align(
                alignment: Alignment.topLeft,
                child: Text("History",style: TextStyle(color:ColorConstant.lightblueColor,fontSize: 20.sp,fontWeight: FontWeight.w600,letterSpacing: 0))),
          SizedBox(height: 10.h,),
          ListView.builder(
            scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context,index){
              ammount=ammount-10;
              month=month-3;
                return Container(
                  margin: EdgeInsets.only(bottom: 10.h),
                  width: double.maxFinite,
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.white
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w,left: 10.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Mercedes-Benz E-class",style: TextStyle(color:ColorConstant.lightblueColor,fontSize: 16.sp,fontWeight: FontWeight.w600,)),
                            Text("₹1.${ammount} Cr ",style: TextStyle(color:ColorConstant.lightblueColor,fontSize: 16.sp,fontWeight: FontWeight.w600,)),
                          ],
                        ),
                        SizedBox(height: 3.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${month} DEC 2023",style: TextStyle(color:Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w500)),
                            Text("Master Card",style:  TextStyle(color:Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w500)),
                          ],
                        )
                      ],
                    ),
                  ),
                );

              })

          ],
        ),
      ),
    ),
    );
  }
}
