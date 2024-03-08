import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxe_desires/app/modules/home/views/widgets/popular_widget.dart';

class PopularArea extends StatelessWidget {
  const PopularArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'What else is popular',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        SizedBox(
          height: 12.h,
        ),
        ListView.builder(
            padding: EdgeInsets.zero,
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, listViewIndex) {
              return const PopularWidget();
            }),
        SizedBox(
          height: 12.h,
        ),
      ],
    );
  }
}
