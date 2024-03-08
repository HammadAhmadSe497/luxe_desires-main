import 'package:flutter/material.dart';
import 'package:luxe_desires/app/modules/home/views/widgets/category_widget.dart';

class MenuArea extends StatelessWidget {
  const MenuArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryWidget(
              title: 'Events',
              icon: Icons.event_available_outlined,
            ),
            CategoryWidget(
              title: 'Music',
              icon: Icons.music_note,
            ),
            // SizedBox( height: 30,),

          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryWidget(
              title: 'Guest List',
              icon: Icons.people_alt_rounded,
            ),
            CategoryWidget(
              title: 'Menu',
              icon: Icons.menu_book,
            ),
          ],
        )
      ],
    );
  }
}
