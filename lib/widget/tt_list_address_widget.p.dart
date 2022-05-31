import 'package:aloship/model/model.dart';
import 'package:aloship/module/module.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';

class TTListAddressWidget extends StatelessWidget {
  final List<AddressInfo> list;
  final bool hasMoreDestination;

  const TTListAddressWidget({
    Key? key,
    required this.list,
    this.hasMoreDestination = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
      child: Column(
        children: [
          ListView.separated(
            padding: const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 17),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (_, __) {
              return Container(
                margin: const EdgeInsets.only(left: 30, right: 16, top: 6),
                height: 1,
                color: Cl.clEAEFF1,
              );
            },
            itemCount: list.length + (hasMoreDestination ? 1 : 0),
            itemBuilder: (_, i) {
              bool isFirst = i == 0;
              bool isLastItem = i == list.length - (hasMoreDestination ? 0 : 1);

              if (hasMoreDestination && i == list.length) {
                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Image.asset(Id.ic_location3),
                      const SizedBox(width: 10),
                      Text(
                        'Thêm điểm đến',
                        style: St.body14500.copyWith(color: Cl.red),
                      ),
                    ],
                  ),
                );
              }

              return Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 24,
                        ),
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
                            Text(
                              isFirst ? 'Điểm đi' : 'Điểm đến $i',
                              style: St.body14400.copyWith(color: Cl.cl777777),
                            ),
                            const SizedBox(height: 1),
                            Text(
                              list[i].address,
                              style: St.body16400.copyWith(color: Cl.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (!isLastItem)
                    Positioned(
                      top: 44,
                      left: 7,
                      width: 2,
                      height: 38,
                      child: CustomPaint(
                        size: const Size(2, 40),
                        painter: DashedLineVerticalPainter(),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
