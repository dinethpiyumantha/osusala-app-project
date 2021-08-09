import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:osusala/constraints.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({Key? key}) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown>
    with SingleTickerProviderStateMixin {
  late bool isDropdownOpend;

  late AnimationController animController;
  bool isMenuExpanded = false;

  @override
  void initState() {
    super.initState();
    animController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  void changeMenuIcon() {
    isMenuExpanded = isMenuExpanded ? false : true;
    if (isMenuExpanded) {
      animController.forward();
    } else {
      animController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: oPrimaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            color: oWhiteColor,
            icon: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: animController,
            ),
            onPressed: () {
              changeMenuIcon();
            },
          ),
        ),
      ),
    );
  }
}
