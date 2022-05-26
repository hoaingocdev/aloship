import 'package:aloship/model/model.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';

class TtOrderSpeedWidget extends StatefulWidget {
  final VoidCallback? onPressed;

  final ServiceInfo serviceInfo;

  const TtOrderSpeedWidget({
    Key? key,
    this.onPressed,
    required this.serviceInfo,
  }) : super(key: key);

  @override
  _TtOrderSpeedWidgetState createState() => _TtOrderSpeedWidgetState();
}

class _TtOrderSpeedWidgetState extends State<TtOrderSpeedWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 63,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Cl.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 20,
                spreadRadius: 5,
                color: Cl.black.withOpacity(0.05),
              ),
            ],
          ),
          child: Material(
            child: InkWell(
              onTap: widget.onPressed,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(21),
                      child: Image.network(
                        widget.serviceInfo.imageUrl,
                        height: 42,
                        width: 42,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.serviceInfo.name,
                        style: St.body14500.copyWith(color: Cl.black),
                      ),
                      Text(
                        widget.serviceInfo.note,
                        style: St.body14400.copyWith(color: Cl.black),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Image.asset(Id.ic_arrow_back_right),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
