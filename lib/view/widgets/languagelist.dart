import 'package:authentication_app/view/screens/Homepage.dart';
import 'package:authentication_app/utils/helpers/helper_function.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class language extends StatelessWidget {
  const language({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final dark=SHelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              // ElevatedButton(
              //     onPressed: () {
              //       context.locale = Locale("bn");
              //     },
              //     child: Text(" Bangla")),
              TextButton(onPressed: (){context.locale =Locale("bn");SHelperFunctions.navigateToScreen(context, Homepage());}, child: Text(" Bangla")),
              const Icon(Icons.flag,color: Colors.green,)
            ],
          ),
          Row(
            children: [
              // ElevatedButton(
              //     onPressed: () {
              //       context.locale = Locale("en");
              //     },
              //     child: Text("English")
              // ),
              TextButton(onPressed: (){context.locale=Locale("en");SHelperFunctions.navigateToScreen(context, Homepage());}, child:const Text("English")),
              const Icon(Icons.flag,color: Colors.green,)
            ],
          ),
        ],
      ),
    );
  }
}