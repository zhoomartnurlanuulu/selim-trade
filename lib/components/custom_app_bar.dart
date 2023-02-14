// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
      this.title,
      this.color,
      this.elevation,
      this.actions,
      this.centerTitle,
      this.toolbarHeight,
      this.flexibleSpace})
      : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  Widget? title;
  Widget? flexibleSpace;
  double? toolbarHeight;
  bool? centerTitle;
  Color? color;
  double? elevation;
  List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      centerTitle: centerTitle,
      title: title,
      backgroundColor: color,
      elevation: elevation,
      actions: actions,
      flexibleSpace: flexibleSpace,
    );
  }
}
