import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_company/home/view/widget/textsearch.dart';

class AppbarScreen extends StatelessWidget {
  const AppbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color:Color(0xffe53935) ,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          )
      ),
      width: MediaQuery.of(context).size.width,
      child: ClipPath(

        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -40,
              right: -60,
              child: Align(
                alignment: Alignment.topRight,

                child: Container(
                  height: 180,
                  width: 180,

                  decoration: BoxDecoration(
                      color: Color(0xfff19c99).withOpacity(0.6),
                    shape: BoxShape.circle,

                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(100),
                    //   bottomLeft: Radius.circular(100),
                    //   bottomRight: Radius.circular(0),
                    // )
                  ),


                ),
              ),
            ),
            Positioned(
              top: -50,
              left: -60,
              child: Align(
                alignment: Alignment.topLeft,

                child: Container(
                  height: 180,
                  width: 180,

                  decoration: BoxDecoration(
                      color: const Color(0xffce2a28).withOpacity(0.6),
                    shape: BoxShape.circle,

                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(100),
                    //   bottomLeft: Radius.circular(100),
                    //   bottomRight: Radius.circular(0),
                    // )
                  ),


                ),
              ),
            ),
            Positioned(
              bottom: -90,
              right: -10,
              child: Align(
                alignment: Alignment.bottomCenter,

                child: Container(
                  height: 200,
                  width: 200,

                  decoration: BoxDecoration(
                      color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.5),
                      width: 1
                    ),
                    shape: BoxShape.circle,

                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(100),
                    //   bottomLeft: Radius.circular(100),
                    //   bottomRight: Radius.circular(0),
                    // )
                  ),


                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 45.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:  Border.all(
                                width: 2.w,
                                color: const Color(0xfff04f45)
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(8.0.w),
                          child: Image.asset('images/filter.png',color: const Color(0xff751d1b),
                            height: 5.h,
                          ),
                        ),
                      ),
                      const TextSearchWidget(),
                    ],
                  ),
                   SizedBox(height: 50.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset('images/mute.png',color: Colors.white,height: 15.h,),
                           SizedBox(height: 3.h,),
                           Text('Un Mute',style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp
                          ),),
                        ],
                      ),
                      Column(
                        children:  [
                          Text('Visitors',style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp
                          ),),

                          SizedBox(height: 3.h,),
                          Text('100000',style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.sp
                          ),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
