import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/consts/colors.dart';
import 'package:icons_plus/icons_plus.dart';

class FAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FAppBar({
    super.key,
    required this.title,
    required this.firstIcon,
    this.secondIcon = HeroIcons.shopping_cart,
    required this.backbutton,
  });

  final String title;
  final IconData firstIcon;
  final IconData secondIcon;
  final bool backbutton;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backbutton ? Icon(Iconsax.arrow_left_2_outline):null,
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "DMSans",
          fontWeight: FontWeight.w700,
          color: FColors.oceanBlue,
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.all(10),
          child: Icon(
            firstIcon,
            color: const Color.fromARGB(255, 0, 6, 16),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 10, 10),
          child: Icon(
            secondIcon,
            color: const Color.fromARGB(255, 0, 4, 12),
          ),
        ),
      ],
      centerTitle: true,
      elevation: 2,
      backgroundColor: Colors.white,
    );
  }
}
