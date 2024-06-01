import 'package:animation/common/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

class CarDetail extends StatelessWidget {
  final String carIMAG;
   CarDetail({super.key, required this.carIMAG});

  @override
  List<String>type=["Total Capacity","Highest Speed","Engine OutPut"];
  List<String>feature=["6 Seats","200 KM/H","500 HP"];
  List<Icon>icons=[Icon(Icons.chair_outlined),Icon(Icons.speed_outlined),Icon(Icons.energy_savings_leaf_outlined)];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.lightblueColor,
      appBar: AppBar(
        toolbarHeight: 45.h,
         backgroundColor: Colors.transparent,
        leading: Padding(
          padding:  EdgeInsets.only(left: 10.w),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: CircleAvatar(
              radius: 20.r,
              backgroundColor: Colors.white30,
              child: Icon(Icons.arrow_back_ios_new,size: 20.sp,color: Colors.white,),
            ),
          ),
        ),
        title: Text("Car Detail",style: TextStyle(color:Colors.white70,fontSize: 22,fontWeight: FontWeight.w500,letterSpacing: 1),),
        centerTitle: true,
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 10.w),
            child: CircleAvatar(
              radius: 20.r,
              backgroundColor: Colors.white30,
              child: Icon(Icons.favorite_border,size: 20.sp,color: Colors.white,),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(carIMAG,width: double.maxFinite,height: 150.h,),
          SizedBox(height: 10.h,),
          Expanded(
              child: Container(
                width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r),topRight:  Radius.circular(20.r)),
                     color: Colors.white
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 15.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("BMW 840i Coupe",style: TextStyle(color: ColorConstant.lightblueColor,fontSize: 22.sp,fontWeight: FontWeight.w600)),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.amber,size: 18.sp,),
                                SizedBox(width: 2.w,),
                                Text("(4.5)",style: TextStyle(color: ColorConstant.lightblueColor.withOpacity(0.7),fontSize: 15.sp,fontWeight: FontWeight.w500),),
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: 5.h,),
                        ReadMoreText(
                          'The ideal combination of power and luxury: the 2024 BMW 840i Coupe models boast a turbocharged inline 6-cylinder engine and sumptuous interior.',
                          style: TextStyle(color: ColorConstant.lightblueColor.withOpacity(0.5),fontSize: 14.sp),
                          trimLines: 3,
                          colorClickableText: Colors.pink,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: 'Show less',
                          moreStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                          lessStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.h,),
                        Text("Feature",style: TextStyle(color: ColorConstant.lightblueColor,fontSize: 20.sp,fontWeight: FontWeight.w600)),
                        SizedBox(height: 10.h,),
                        GridView.builder(
                          physics:const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 5.0.h,
                            mainAxisSpacing: 5.0.w,
                            childAspectRatio: 0.7
                          ),
                          itemCount: 3,
                          itemBuilder: (context, index){
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: Colors.grey.shade300,
                              ),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 CircleAvatar(
                                   backgroundColor: Colors.white,
                                   child:  icons[index],
                                 ),
                                 SizedBox(height: 15.h,),
                                 Text(type[index],style: TextStyle(color: ColorConstant.lightblueColor.withOpacity(0.7),fontSize: 13.sp,fontWeight: FontWeight.w500),),
                                 SizedBox(height: 15.h,),
                                 Text(feature[index],style: TextStyle(color: ColorConstant.lightblueColor,fontSize: 18.sp,fontWeight: FontWeight.w500),),

                               ],
                             ),
                          );
                        })
                      ],
                    ),
                  )

              )

          )

        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 60.h,
        child: Padding(
          padding: EdgeInsets.only(left: 15.w,right: 15.w,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Price",style: TextStyle(color: ColorConstant.lightblueColor.withOpacity(0.7),fontSize: 15.sp,fontWeight: FontWeight.w500),),
                  Text("\$45,490",style: TextStyle(color: ColorConstant.lightblueColor,fontSize: 20.sp,fontWeight: FontWeight.w600),),
                ],
              ),
              Container(
                height: 40.h,
                width: 140.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: ColorConstant.lightblueColor
                ),
                child: Center(child: Text("BUY NOW",style: TextStyle(color: Colors.white,fontSize: 18.sp),),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
