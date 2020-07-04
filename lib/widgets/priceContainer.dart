import 'package:flutter/material.dart';

class PriceContainer extends StatelessWidget {
  final currencyIcon;
  final currencyName;
  final currentAmount;
  final textColor;
  final onClick;
  final differenceInAmount;

  PriceContainer(
      {this.currencyIcon,
      this.currencyName,
      this.currentAmount,
      this.textColor,
      this.onClick,
      this.differenceInAmount});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      width: 150,
      height: 200,
      margin: EdgeInsets.only(right: 20),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onClick,
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(currencyIcon),
                Spacer(),
                Text(currencyName, style: Theme.of(context).textTheme.caption),
                SizedBox(height: 10),
                Text(
                  currentAmount,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(height: 10),
                Text(
                  differenceInAmount,
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
