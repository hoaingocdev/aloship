import 'package:aloship/model/model.dart';
import 'package:aloship/res/color.p.dart';
import 'package:flutter/material.dart';

import '../module/module.dart';
import '../res/asset.p.dart';

class TtAddressInfoWidget extends StatefulWidget {
  final AddressInfo addressInfo;

  const TtAddressInfoWidget({Key? key, required this.addressInfo}) : super(key: key);
  @override
  _TtAddressInfoWidgetState createState() => _TtAddressInfoWidgetState();
}

class _TtAddressInfoWidgetState extends State<TtAddressInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (_, __) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 46),
          height: 1,
          color: Cl.clEAEFF1,
        );
      },
      itemCount: 3,
      itemBuilder: (_, i) {
        bool isFirst = i == 0;
        bool isLast = i == 3 - 1;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 15),
                  child: Image.asset(
                    isFirst ? Id.ic_location : Id.ic_destination,
                    width: 14,
                  ),
                ),
                const SizedBox(width: 12),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(isFirst ? 'Điểm đi' : 'Điểm đến'),
                      const SizedBox(height: 1),
                      Text(widget.addressInfo.address),
                    ],
                  ),
                ),
              ],
            ),
            if (!isLast)
              Positioned(
                top: 44,
                left: 22,
                width: 2,
                height: 44,
                child: CustomPaint(
                  size: const Size(2, 40),
                  painter: DashedLineVerticalPainter(),
                ),
              ),
          ],
        );
      },
    );
  }
}
