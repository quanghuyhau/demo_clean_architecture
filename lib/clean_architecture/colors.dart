// import 'package:flutter/material.dart';
//
// class AppColors {
//   static const Color primaryColor = Color(0xff303030);
//   static const Color secondaryColor = Color(0xFF42A5F5);
//   static const Color backgroundColor = Color(0xFFE3F2FD);
//   static const Color textColor = Color(0xFFFFFFFF);
//   static const Color buttonColor = Color(0xFF1976D2);
// }
// _itemSetting({
//   String? icon,
//   String? title,
//   String? subtitle,
//   Widget? action,
//   bool hasRightIcon = true,
//   required VoidCallback onTap,
// }) {
//   return InkWell(
//     onTap: onTap,
//     child: SingleChildScrollView(
//       child: Container(
//         margin: const EdgeInsets.only(bottom: 18),
//         padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 14),
//         decoration: BoxDecoration(
//           color: theme.color.neutral_0,
//           borderRadius: const BorderRadius.all(Radius.circular(12)),
//           boxShadow: [
//             BoxShadow(
//               color: theme.color.shadow.withOpacity(0.1),
//               spreadRadius: 0,
//               blurRadius: 2,
//               offset: const Offset(0, 2), // changes position of shadow
//             ),
//           ],
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             ClipOval(
//               child: Container(
//                 width: 48,
//                 height: 48,
//                 color: theme.color.secondary,
//                 child: Center(
//                   child: LoadImage(
//                     url: icon,
//                     width: 24,
//                     height: 24,
//                     colors: theme.color.primary,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(width: 10),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title ?? '',
//                     style: theme.font.t14S.copyWith(
//                       color: theme.color.neutral_11,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Container(
//                     width: 260,
//                     child: Text(
//                       subtitle ?? '',
//                       style: theme.font.t12R.copyWith(
//                           color: theme.color.neutral_6, height: 1.5),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(
//               width: 10,
//             ),
//             if (hasRightIcon)
//               action ??
//                   const LoadImage(
//                     url: Assets.iconsArrowRight,
//                     width: 20,
//                     height: 20,
//                     colors: Colors.black,
//                   ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
