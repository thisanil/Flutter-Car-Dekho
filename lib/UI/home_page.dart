import 'package:animation/UI/car_detail_screen.dart';
import 'package:animation/common/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

import 'notification_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String>companyName=["Cadillac","Tesla","BMW","Mazda","Audi"];
  List<String>companylogo=[
    "assets/logo_image/cadillac.png",
    "assets/logo_image/tesla.png",
    "assets/logo_image/bmw.png",
    "assets/logo_image/mazd.png",
    "assets/logo_image/aud.png"];
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.SkywhiteColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor:  ColorConstant.SkywhiteColor,
            automaticallyImplyLeading: false,
            pinned: true,
            primary: false,
            floating: false,
            snap: false,
            elevation: 0,
            // centerTitle: true,
            leading: const Text(""),
            expandedHeight: 130.h,
            flexibleSpace: SizedBox(
              height: 100.h,
              child: Padding(
                padding: EdgeInsets.only(top: 35.h,left: 10.w,right: 10.w),
                child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [

                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Welcome",style: TextStyle(color: ColorConstant.lightblueColor.withOpacity(0.5),fontSize: 15),),
                          Text("Anix Saini",style: TextStyle(color: ColorConstant.lightblueColor,fontSize: 20,fontWeight: FontWeight.w600),),
                    ],
                     ),
                   InkWell(
                     onTap: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationScreen()));
                     },
                     child: Container(

                         height: 35.h,
                         width: 35.w,
                         decoration:const BoxDecoration(
                             shape: BoxShape.circle,
                             color: Colors.white
                         ),
                         child: const Icon(Icons.notifications_rounded),
                       ),
                   ),
                    ],
                ),
              ),
            ),
            bottom: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: false,
              title: SizedBox(
              height: 40.h,
              child: TextField(

                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(4),
                   isDense: true,
                  filled: true,
                  fillColor: Colors.white60,
                  hintText: "Search your car",
                  prefixIcon:const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide:  BorderSide(
                      color:ColorConstant.lightblueColor,
                      style: BorderStyle.solid,
                    ),

                  ),
                ),
              ),
            ),
            ),
          ),
        SliverList(
        delegate: SliverChildListDelegate([
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 95.h,
                  child: ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Container(
                                height: 60.h,
                                width: 60.w,
                                decoration:  BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorConstant.lightblueColor

                                ),
                                child: Image.asset(companylogo[index],height: 50.h,width: 50.h,),
                              ),
                              Text(companyName[index],style: TextStyle(fontWeight: FontWeight.w500),)
                            ],
                          ),
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Car",style: TextStyle(color: ColorConstant.lightblueColor,fontSize: 20.sp,fontWeight: FontWeight.w600)),
                    Text("View all",style: TextStyle(color: ColorConstant.lightblueColor.withOpacity(0.5),fontSize: 15.sp),),

                  ],
                ),
                GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0.h,
                    mainAxisSpacing: 5.0.w,
                      ),

                    itemCount: carImg.length,
                    itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CarDetail(carIMAG: carImg[index],)));

                    },
                    child: Card(
                      elevation: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.r),

                        ),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Image.asset(carImg[index]),
                              Text("BMW 840i Coupe",style: TextStyle(color: ColorConstant.lightblueColor.withOpacity(0.7),fontSize: 15.sp,fontWeight: FontWeight.w600)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("\$45,490",style: TextStyle(color: ColorConstant.lightblueColor.withOpacity(0.5),fontSize: 15.sp),),
                                   SizedBox(width: 20.w,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.amber,size: 18.sp,),

                                      Text("4.5",style: TextStyle(color: ColorConstant.lightblueColor.withOpacity(0.5),fontSize: 15),),
                                    ],
                                  ),

                                ],
                              )
                            ],
                          ),
                          Positioned(
                            top: 5.h,
                            left: 7.w,
                            child: CircleAvatar(
                              radius: 15.r,
                              backgroundColor: Colors.grey.shade200,
                              child: Icon(Icons.favorite_border,color: ColorConstant.lightblueColor.withOpacity(0.5),size: 18.sp,),
                            ),
                          )
                        ],
                      ),
                      ),
                    ),
                  );
                     }),
              ],
            ),
          )
        ]),)
        ],
      ),

    );
  }
}


