import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Container(
        decoration: ShapeDecoration(
          color: ColorsApp.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// import '../../../../../../core/utils/styles.dart';
//
// class ThankYouCard extends StatelessWidget {
//   const ThankYouCard({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: ShapeDecoration(
//         color: const Color(0xFFEDEDED),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
//         child: Column(
//           children: [
//             const Text(
//               'Thank you!',
//               textAlign: TextAlign.center,
//               style: Styles.style25,
//             ),
//             Text(
//               'Your transaction was successful',
//               textAlign: TextAlign.center,
//               style: Styles.style20,
//             ),
//             const SizedBox(
//               height: 42,
//             ),
//             const PaymentItemInfo(
//               title: 'Date',
//               value: '01/24/2023',
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const PaymentItemInfo(
//               title: 'Time',
//               value: '10:15 AM',
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const PaymentItemInfo(
//               title: 'To',
//               value: 'Sam Louis',
//             ),
//             const Divider(
//               height: 60,
//               thickness: 2,
//             ),
//             const TotalPrice(title: 'Total', value: r'$50.97'),
//             const SizedBox(
//               height: 30,
//             ),
//             const CardInfoWidget(),
//             const Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Icon(
//                   FontAwesomeIcons.barcode,
//                   size: 64,
//                 ),
//                 Container(
//                   width: 113,
//                   height: 58,
//                   decoration: ShapeDecoration(
//                     shape: RoundedRectangleBorder(
//                       side: BorderSide(width: 1.50, color: ColorsApp.green),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'PAID',
//                       textAlign: TextAlign.center,
//                       style: Styles.textStyle24
//                           .copyWith(color: const Color(0xff34A853)),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
