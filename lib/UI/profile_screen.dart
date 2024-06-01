import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common/constant/color.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});

  @override
  List<String>type=["Maintain","Auto Parts","Driving Skill"];

  List<Icon>icons=[Icon(Icons.engineering),Icon(Icons.webhook),Icon(Icons.drive_eta)];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.SkywhiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstant.SkywhiteColor,
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
        title: Text("Profile",style: TextStyle(color:ColorConstant.lightblueColor,fontSize: 22.sp,fontWeight: FontWeight.w500,letterSpacing: 1),),
        centerTitle: true,
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 15.w),
            child: CircleAvatar(
              radius: 20.r,
              backgroundColor: Colors.white,
              child: Icon(Icons.edit,size: 20.sp,color: ColorConstant.lightblueColor,),
            ),
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),
          CircleAvatar(radius: 50.r,
         backgroundImage: const AssetImage("assets/Anix.png",),

          ),
          SizedBox(height: 10.h,),
          Text("AniX Saini",style: TextStyle(color:ColorConstant.lightblueColor,fontSize: 20.sp,fontWeight: FontWeight.w800,letterSpacing: 1)),
          Text("BMW 3 Series Owner",style: TextStyle(color:ColorConstant.lightblueColor.withOpacity(0.6),fontSize: 14.sp,)),
          SizedBox(height: 20.h,),
          Expanded(child: Container(
             width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20.r),topLeft: Radius.circular(20.r)),
              color: Colors.white
            ),
             child: Padding(
               padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 15.w),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Common Functions",style: TextStyle(color: ColorConstant.lightblueColor,fontSize: 20.sp,fontWeight: FontWeight.w600)),
                   SizedBox(height: 15.h,),
                   GridView.builder(
                       physics:const NeverScrollableScrollPhysics(),
                       shrinkWrap: true,
                       gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 3,
                           crossAxisSpacing: 5.0.h,
                           mainAxisSpacing: 5.0.w,
                           childAspectRatio: 0.8
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

                             ],
                           ),
                         );
                       }),
                   SizedBox(height: 20.h,),
                   setting("My Cars",const Icon(Icons.car_rental)),
                   SizedBox(height: 15.h,),
                   setting("Social Media Links",const Icon(Icons.share)),
                   SizedBox(height: 90.h,),
                   Container(
                     width: double.maxFinite,
                     height: 45.h,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30.r),
                       color: ColorConstant.lightblueColor,
                     ),
                     child:    Center(child: Text("Log Out",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w600))),
                   )

                 ],
               ),
             ),
              )),

        ],
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
           color: Colors.grey.shade300,
       ),
       child: Row(
         children: [
           CircleAvatar(
             backgroundColor: Colors.white,
             child:iconx,
           ),
           SizedBox(width: 20.w,),
           Text(type,style: TextStyle(color:ColorConstant.lightblueColor.withOpacity(0.6),fontWeight: FontWeight.w500,fontSize: 14.sp),)
         ],
       ),
     );
   }
}
