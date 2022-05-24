import 'package:aloship/model/model.dart';
import 'package:flutter/material.dart';

import '../res/res.dart';

class DiscountWidget extends StatefulWidget {
  final DiscountInfo discountInfo;

  const DiscountWidget({Key? key, required this.discountInfo}) : super(key: key);
  @override
  _DiscountWidgetState createState() => _DiscountWidgetState();
}

class _DiscountWidgetState extends State<DiscountWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      width: 367,
      margin: const EdgeInsets.symmetric(horizontal: 23),
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
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 113,
              width: 113,
              child: Image.network(widget.discountInfo.imageUrl),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.discountInfo.title,
                    style: St.body16500.copyWith(
                      color: Cl.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 7),
                  Text(
                    widget.discountInfo.description,
                    style: St.body14400.copyWith(
                      color: Cl.cl777777,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 7),
                  Text(
                    widget.discountInfo.expiredDate,
                    style: St.body14400.copyWith(
                      color: Cl.cl006DE0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
