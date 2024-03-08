import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxe_desires/app/constants/app_color.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            '[display_name]',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          subtitle: Text(
            '[display_name]',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: DarkThemeColor.primary,
                ),
          ),
        ),
        Divider(
          height: 0,
          thickness: 1,
          indent: 8.w,
          endIndent: 8.w,
          color: Colors.white.withOpacity(.7),
        )
      ],
    );
  }
}
