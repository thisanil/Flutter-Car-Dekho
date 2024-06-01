import 'package:animation/UI/home_page.dart';
import 'package:animation/common/constant/color.dart';
import 'package:entry/entry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bottom_navigation_bar.dart';

class SpScreen extends StatefulWidget {
  const SpScreen({super.key});

  @override
  State<SpScreen> createState() => _SpScreenState();
}

class _SpScreenState extends State<SpScreen> {
  @override
  PageController _controller=PageController();
  void initState() {
    // TODO: implement initState
    super.initState();
    // Future.delayed(Duration(seconds: 3)).then((value){
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
    // });
  }
  int currentIndex=0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF032030),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 0.h,horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35.h,),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
                },
                child: Container(

                  width: 60.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Color(0xFF003554)
                  ),
                  child: Center(child: Text("Skip >",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w600),)),
                ),
              ),
            ),
            SizedBox(height: 45.h,),
            Text("Easy Way to Buy\nYour Dream Car",style: TextStyle(color: Colors.white,fontSize: 30.sp,fontWeight: FontWeight.w800,letterSpacing: 3),),
            Divider(color: Colors.grey.shade700,thickness: 0.2,),
            Text("Buy using car, you can move quickly\nfrom one place to another in your\ndaily life",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
            SizedBox(
              height: 300,
              width: double.maxFinite,
              child: PageView(
                controller: _controller,
                onPageChanged: (val){
                  setState(() {
                    currentIndex=val;
                  });
                },
                children: [
                  Image.asset("assets/car_image/frarri.png"),
                  Image.asset("assets/car_image/masdiz.png"),
                  Image.asset("assets/car_image/porche.png")
                ],
              ),
            ),
            SizedBox(height: 15.h,),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 5.h,
                child: ListView.builder(
                  shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                   return AnimatedContainer(
                     // curve: Curves.bounceOut,
                     margin: EdgeInsets.only(right: 5.w),
                     width:currentIndex==index?25.w :5.w,
                     height: 5.h,
                     duration: Duration(milliseconds: 600),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10.r),
                       color:currentIndex==index?Colors.white70: Colors.white24
                     ),
                   );
                    }),
              ),
            ),
           SizedBox(height: 130.h,),
           InkWell(
             onTap: (){
               if(currentIndex==2)
                 {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
                 }
                else{
                  currentIndex=currentIndex+1;
                  _controller.jumpToPage(currentIndex);
               }
             },
             child: Container(
               height: 45.h,
               width: double.maxFinite,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30.r),
                 color: Colors.white38
               ),
               child: Center(child: Text(currentIndex==2?"Get Start":"Next >> ",style: TextStyle(color: Color(0xFF003554),fontWeight: FontWeight.w700,fontSize: 20.sp),),),
             ),
           )



          ].animate(interval: 500.ms).fade(duration: 300.ms),
        ),
      ),
    );
  }
}
