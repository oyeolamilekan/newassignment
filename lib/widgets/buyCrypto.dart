import 'package:flutter/material.dart';
import 'package:ui_assignment_flutter/utils.dart';
import 'package:ui_assignment_flutter/widgets/buttons.dart';

class BuyCrypto extends StatefulWidget {
  @override
  _BuyCryptoState createState() => _BuyCryptoState();
}

class _BuyCryptoState extends State<BuyCrypto> {
  final List<Map<String, String>> bank = [
    {"name": "Bank of america", "cardInfo": "BANK-EXP 23544*******2332"},
    {"name": "Access bank america", "cardInfo": "BANK-EXP 25344*******2332"},
  ];
  final List<Map<String, String>> currencies = [
    {"name": "Etherum", "img": "assets/images/etherum.png"},
    {"name": "Bitcoin", "img": "assets/images/bitcoin.png"}
  ];

  Map selectedCurrency = {
    "name": "Etherum",
    "img": "assets/images/etherum.png"
  };

  Map<String, String> selectedBank = {
    "name": "Bank of america",
    "cardInfo": "BANK-EXP 23544*******2332"
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      margin: EdgeInsets.only(top: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Select Currency",
            style: TextStyle(color: hexToColor("#9A9A9A")),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: hexToColor("#EBEBEB")),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: selectedCurrency['name'],
                  onChanged: (value) {
                    setState(() {
                      selectedCurrency['name'] = value;
                    });
                  },
                  items: currencies.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem(
                      child: Row(
                        children: <Widget>[
                          Container(
                              child: SizedBox(
                                  child: Image.asset(value['img']), width: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              )),
                          SizedBox(width: 10),
                          Text(value['name']),
                        ],
                      ),
                      value: value['name'],
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Select Currency",
            style: TextStyle(color: hexToColor("#9A9A9A")),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: hexToColor("#EBEBEB")),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: selectedBank['name'],
                  onChanged: (value) {
                    setState(() {
                      selectedBank['name'] = value;
                    });
                  },
                  items: bank.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem(
                      child: Row(
                        children: <Widget>[
                          Image.asset("assets/images/bankLogo.png"),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(value['name']),
                              Text(value['cardInfo']),
                            ],
                          ),
                        ],
                      ),
                      value: value['name'],
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Enter Your Amount",
            style: TextStyle(color: hexToColor("#9A9A9A")),
          ),
          Container(
              margin: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: hexToColor("#EBEBEB")),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "729.07 USD",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                              width: 2.0, color: hexToColor("#EBEBEB")),
                        ),
                      ),
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "0,0283 BTC",
                        style: TextStyle(fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          RaisedBuyButton(
            onPressed: () {},
            color: hexToColor("#0A0D18"),
            child: Text("Buy Bitcoins", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
