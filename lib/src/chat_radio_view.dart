import 'package:flutter/material.dart';
import 'package:flutter_openim_widget/flutter_openim_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatRadio extends StatelessWidget {
  const ChatRadio({
    Key? key,
    this.checked = false,
    this.showRadio = false,
  }) : super(key: key);
  final bool checked;
  final bool showRadio;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showRadio,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        child: Container(
          padding: EdgeInsets.only(left: 6.w, right: 12.w),
          child: ImageUtil.assetImage(
            checked ? 'ic_radio_msg_sel' : 'ic_radio_msg_nor',
            width: 18.w,
            height: 18.w,
          ),
        ),
      ),
    );
  }
}
