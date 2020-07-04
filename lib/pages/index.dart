import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_assignment_flutter/animation/FadeAnimation.dart';
import 'package:ui_assignment_flutter/utils.dart';
import 'package:ui_assignment_flutter/widgets/modal.dart';
import 'package:ui_assignment_flutter/widgets/newChartContainer.dart';
import 'package:ui_assignment_flutter/widgets/priceContainer.dart';

class Index extends StatefulWidget {
  Index({Key key});

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int currentPosition = 0;
  Modal modal = Modal();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: hexToColor("#101426"),
      extendBodyBehindAppBar: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeAnimation(
                  1,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset("assets/images/avatar.png"),
                        Text(
                          "Total Balance",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                        SvgPicture.asset("assets/icons/icon.svg"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FadeAnimation(
                      1.2,
                      Text("\$84,927.83",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline3
                              .copyWith(color: Colors.white)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      1.5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset("assets/icons/caretUp.svg"),
                          SizedBox(
                            width: 10,
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "\$726 (15%)",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                          color: hexToColor("#00E096"),
                                          fontWeight: FontWeight.w300)),
                              TextSpan(
                                  text: " Today",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300))
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                FadeAnimation(
                  1.5,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Text("Wallets",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(color: Colors.white)),
                  ),
                ),
                FadeAnimation(
                  1.5,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        children: <Widget>[
                          PriceContainer(
                              currencyIcon: "assets/images/bitcoin.png",
                              currencyName: "Bitcoin",
                              currentAmount: "3.07261 BTC",
                              textColor: hexToColor("#FF9F05"),
                              onClick: () => modal.mainBottomSheet(context),
                              differenceInAmount: "+ \$726 (15%)"),
                          PriceContainer(
                              currencyIcon: "assets/images/etherum.png",
                              currencyName: "Etherum",
                              currentAmount: "1.07261 ETH",
                              textColor: hexToColor("#1D86FF"),
                              onClick: () => modal.mainBottomSheet(context),
                              differenceInAmount: "+ \$726 (15%)"),
                          PriceContainer(
                              currencyIcon: "assets/images/bitcoin.png",
                              currencyName: "Bitcoin",
                              currentAmount: "1.07261 ETH",
                              textColor: hexToColor("#FF9F05"),
                              onClick: () => modal.mainBottomSheet(context),
                              differenceInAmount: "+ \$726 (15%)"),
                          PriceContainer(
                              currencyIcon: "assets/images/bitcoin.png",
                              currencyName: "Bitcoin",
                              currentAmount: "3.07261 BTC",
                              textColor: hexToColor("#FF9F05"),
                              onClick: () => modal.mainBottomSheet(context),
                              differenceInAmount: "+ \$726 (15%)"),
                          PriceContainer(
                              currencyIcon: "assets/images/bitcoin.png",
                              currencyName: "Bitcoin",
                              currentAmount: "3.07261 BTC",
                              textColor: hexToColor("#FF9F05"),
                              onClick: () => modal.mainBottomSheet(context),
                              differenceInAmount: "+ \$726 (15%)"),
                        ],
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  1.6,
                  Container(
                      width: size.width,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Statistics",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                ),
                                Spacer(),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 10,
                                      height: 10,
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: hexToColor("#FF2D55")),
                                    ),
                                    Text("Bitcoin",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1
                                            .copyWith(color: Colors.white)),
                                  ],
                                ),
                                SizedBox(width: 30),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 10,
                                      height: 10,
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: hexToColor("#30BC96")),
                                    ),
                                    Text("Ripple",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1
                                            .copyWith(color: Colors.white)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          BeizerChart(),
                        ],
                      )),
                ),
                FadeAnimation(
                  1.8,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            setState(() {
                              currentPosition = 0;
                            });
                          },
                          child: Container(
                              decoration: currentPosition == 0
                                  ? BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(18)),
                                      color: hexToColor("#ffffff")
                                          .withOpacity(0.06),
                                      border: Border.all(
                                          width: 2,
                                          color: hexToColor("#ffffff")
                                              .withOpacity(0.06)),
                                    )
                                  : BoxDecoration(),
                              child: Text("To Day",
                                  style: TextStyle(color: Colors.white)),
                              padding: EdgeInsets.all(10)),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              currentPosition = 1;
                            });
                          },
                          child: Container(
                              decoration: currentPosition == 1
                                  ? BoxDecoration(
                                      color: hexToColor("#ffffff")
                                          .withOpacity(0.06),
                                      border: Border.all(
                                          width: 2,
                                          color: hexToColor("#ffffff")
                                              .withOpacity(0.06)),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(18)),
                                    )
                                  : BoxDecoration(),
                              child: Text("Week",
                                  style: TextStyle(color: Colors.white)),
                              padding: EdgeInsets.all(10)),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              currentPosition = 2;
                            });
                          },
                          child: Container(
                              decoration: currentPosition == 2
                                  ? BoxDecoration(
                                      color: hexToColor("#ffffff")
                                          .withOpacity(0.06),
                                      border: Border.all(
                                          width: 2,
                                          color: hexToColor("#ffffff")
                                              .withOpacity(0.06)),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(18)),
                                    )
                                  : BoxDecoration(),
                              child: Text("Month",
                                  style: TextStyle(color: Colors.white)),
                              padding: EdgeInsets.all(10)),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              currentPosition = 3;
                            });
                          },
                          child: Container(
                              decoration: currentPosition == 3
                                  ? BoxDecoration(
                                      color: hexToColor("#ffffff")
                                          .withOpacity(0.06),
                                      border: Border.all(
                                          width: 2,
                                          color: hexToColor("#ffffff")
                                              .withOpacity(0.06)),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(18)),
                                    )
                                  : BoxDecoration(),
                              child: Text("Year",
                                  style: TextStyle(color: Colors.white)),
                              padding: EdgeInsets.all(10)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
