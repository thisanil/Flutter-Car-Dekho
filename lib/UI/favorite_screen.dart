

import 'package:animation/common/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteCarScreen extends StatelessWidget {
   FavoriteCarScreen({super.key});

  @override
  List<String>carImg=[
    "assets/car_image/frarri.png",
    "assets/car_image/masdiz.png",
    "assets/car_image/porche.png",
    "assets/car_image/lux.png",
    "assets/car_image/luxury.png",
    "assets/car_image/carIm.png",
    "assets/car_image/audi1.png",
    "assets/car_image/jeep.png",
    "assets/car_image/rangrover.png",
    "assets/car_image/cadillac.png",

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.SkywhiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstant.SkywhiteColor,
        leading: const Text(""),
        title: Text("Favorite Car",style: TextStyle(color:ColorConstant.lightblueColor,fontSize: 22.sp,fontWeight: FontWeight.w500,letterSpacing: 1),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics:const  BouncingScrollPhysics(),
        child: Padding(
          padding:EdgeInsets.symmetric(vertical: 10.h,horizontal: 5.w),
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: carImg.length,
                  itemBuilder: (context ,index){
                return Padding(
                  padding: EdgeInsets.only(bottom: 7.h),
                  child: Card(
                    child: Container(
                      height: 100.h,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.white
                      ),
                      child: Row(

                        children: [
                          SizedBox(
                              height: 100.h,
                              width: 150.w,
                              child: Image.asset(carImg[index])),
                          SizedBox(width: 30.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("BMW 840i Coupe",style: TextStyle(color: ColorConstant.lightblueColor,fontSize: 16.sp,fontWeight: FontWeight.w800)),
                              Text("Price: \$45,490",style: TextStyle(color: ColorConstant.lightblueColor.withOpacity(0.8),fontSize: 15.sp,fontWeight: FontWeight.w700),),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.amber,size: 18.sp,),

                                  Text("4.5",style: TextStyle(color: ColorConstant.lightblueColor.withOpacity(0.8),fontSize: 15.sp,fontWeight: FontWeight.w600),),
                                  Text("(250review)",style: TextStyle(color: ColorConstant.lightblueColor.withOpacity(0.5),fontSize: 12.sp),),
                                ],
                              ),
                              SizedBox(height: 5.h,),
                              Row(
                                children: [
                                  Container(
                                    height: 25.h,
                                    width: 80.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.r),
                                        color: ColorConstant.lightblueColor
                                    ),
                                    child: Center(child: Text("BUY NOW",style: TextStyle(color: Colors.white,fontSize: 12.sp),),),
                                  ),
                                  SizedBox(width: 15.w,),
                                  CircleAvatar(
                                    radius: 15.r,
                                    backgroundColor: Colors.grey.shade200,
                                    child: Icon(Icons.favorite,color: ColorConstant.lightblueColor,size: 18.sp,),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
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
