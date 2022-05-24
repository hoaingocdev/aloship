import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';

class TtLocationWidget extends StatefulWidget {
  final String? title;

  const TtLocationWidget({Key? key, this.title}) : super(key: key);
  @override
  _TtLocationWidgetState createState() => _TtLocationWidgetState();
}

class _TtLocationWidgetState extends State<TtLocationWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Id.ic_location1),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.title != null)
              Text(
                widget.title!,
                style: St.body14400.copyWith(color: Cl.cl777777),
              ),
            Text(
              '120 Nguyễn Trãi, Thanh Xuân, Hà Nội',
              style: St.body16400.copyWith(color: Cl.black),
            ),
          ],
        ),
      ],
    );
  }
}
