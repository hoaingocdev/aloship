import 'package:aloship/model/model.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';

class TTLocationWidget extends StatelessWidget {
  final String? title;
  final AddressInfo? addressInfo;
  final String? addressText;

  const TTLocationWidget({
    Key? key,
    this.title,
    this.addressInfo,
    this.addressText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Id.ic_location1),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
              Text(
                title!,
                style: St.body14400.copyWith(color: Cl.cl777777),
              ),
            Text(
              addressText ?? addressInfo?.address ?? '-',
              style: St.body16400.copyWith(color: Cl.black),
            ),
          ],
        ),
      ],
    );
  }
}
