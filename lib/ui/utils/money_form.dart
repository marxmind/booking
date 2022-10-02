
import 'package:flutter/material.dart';
import 'package:money_formatter/money_formatter.dart';

class MoneyForm extends StatelessWidget {

  MoneyForm({this.amount});

  final double amount;


  @override
  Widget build(BuildContext context) {

    MoneyFormatter mn = MoneyFormatter(amount: amount,
        settings: MoneyFormatterSettings(
            symbol: '₱',
            thousandSeparator: ',',
            decimalSeparator: '.',
            symbolAndNumberSeparator: ' ',
            fractionDigits: 2,
            compactFormatType: CompactFormatType.short
        )
    );
    MoneyFormatterOutput fo = mn.output;

    return Text(
      fo.symbolOnLeft,
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
      ),
    );
  }

}
