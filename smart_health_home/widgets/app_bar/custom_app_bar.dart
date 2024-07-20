import 'package:flutter/material.dart';
import '../../core/app_export.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  CustomAppBar(
    {Key? key,
    this.height,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centertitle,
    this.actions})
    : super (
      key : key
      );

  final double? height;
  final double? leadingWidth;
  final Widget? leading;
  final Widget? title;
  final bool? centertitle;
  final List<Widget>? actions;
  
  @override

  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height?? 56,
      automaticallyImplyLeading: false,
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centertitle ?? false,
      backgroundColor: Colors.transparent,
      actions: actions,
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(height?? 56);
  
}