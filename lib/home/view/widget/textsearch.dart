import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextSearchWidget extends StatelessWidget {
  const TextSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
        child: Padding(
          padding:  const EdgeInsets.only(
              bottom: 8, left: 10, right: 10, top: 5).r,
          child: TextFormField(
            style:const TextStyle(color: Colors.red),
            onChanged: (value){
            },

            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.w),
                borderSide: const BorderSide(

                        color: Colors.transparent
                    )
                ),
                focusColor: Colors.transparent,
                counterStyle:const TextStyle(color: Colors.white),
                hintStyle:const TextStyle(color: Colors.red),
                contentPadding:const EdgeInsets.all(10).r,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent
                  ),
                    borderRadius: BorderRadius.circular(15.w)),
                hintText: 'Search',

                suffixIcon:Container(

                    decoration:  BoxDecoration(
                        color: const Color(0xfff44334),

                        borderRadius: BorderRadius.only(
                          bottomRight: const Radius.circular(10).r,
                          topRight: const Radius.circular(10).r,
                        )
                    ),
                    child:  Icon(Icons.search,color: Colors.white,size: 30.h,))

            ),
          ),
        ))
    ;
  }
}
