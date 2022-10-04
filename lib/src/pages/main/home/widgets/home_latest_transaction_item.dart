import 'package:flutter/material.dart';

class HomeLatestTransactionItem extends StatelessWidget {

  const HomeLatestTransactionItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    //   margin: const EdgeInsets.only(
    //     bottom: 18,
    //   ),
    //   child: Row(
    //     children: [
    //       Image.ass(
    //         transaction.transactionType!.thumbnail!,
    //         width: 48,
    //       ),
    //       const SizedBox(
    //         width: 16,
    //       ),
    //       Expanded(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               transaction.transactionType!.name!,
    //               style: blackTextStyle.copyWith(
    //                 fontSize: 16,
    //                 fontWeight: medium,
    //               ),
    //             ),
    //             const SizedBox(
    //               height: 2,
    //             ),
    //             Text(
    //               dateToMonthDate(DateTime.parse(transaction.createdAt!)),
    //               style: greyTextStyle.copyWith(
    //                 fontSize: 12,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Text(
    //         (transaction.transactionType?.action == 'cr' ? '+ ' : '- ') +
    //             formatTransactionCurrency(transaction.amount!),
    //         style: blackTextStyle.copyWith(
    //           fontSize: 16,
    //           fontWeight: medium,
    //         ),
    //       ),
    //     ],
    //   ),
    );
  }
}
