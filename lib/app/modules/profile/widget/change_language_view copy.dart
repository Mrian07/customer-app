// ignore_for_file: file_names
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import '../../../../util/constant.dart';
// import '../../../../util/style.dart';
// import '../controllers/language_controller.dart';

// // ignore: must_be_immutable
// class ChangeLanguageView extends StatefulWidget {
//   const ChangeLanguageView({Key? key}) : super(key: key);

//   @override
//   State<ChangeLanguageView> createState() => _ChangeLanguageViewState();
// }

// class _ChangeLanguageViewState extends State<ChangeLanguageView> {
//   final box = GetStorage();

//   final bool isActive = true;

//   @override
//   Widget build(BuildContext context) {
//     LanguageController languageController = Get.put(LanguageController());

//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           elevation: 0,
//           backgroundColor: Colors.white,
//           leading: IconButton(
//             icon: SvgPicture.asset(Images.back),
//             onPressed: () {
//               Get.back();
//             },
//           ),
//         ),
//         body: Padding(
//           padding: EdgeInsets.only(top: 24.h, left: 16.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Column(
//                 children: [
//                   Text(
//                     "CHANGE_LANGUAGE".tr,
//                     style: fontBlack,
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 16.h,
//               ),
//               //english language
//               InkWell(
//                 onTap: () {
//                   languageController.changeLanguage("en");
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.r),
//                     color: box.read('lang') == 'en'
//                         ? AppColor.primaryColor.withOpacity(0.08)
//                         : Colors.white,
//                     border: box.read('lang') == 'en'
//                         ? Border.all(color: AppColor.primaryColor)
//                         : Border.all(color: Colors.white),
//                   ),
//                   height: 56.h,
//                   width: 328.w,
//                   child: Row(children: [
//                     SizedBox(width: 16.w),
//                     SizedBox(
//                       width: 24.w,
//                       height: 24.h,
//                       child: Image.asset(
//                         Images.flagEn,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     SizedBox(width: 16.w),
//                     Text(
//                       "English",
//                       style: fontMedium,
//                     ),
//                     const Spacer(),
//                     box.read('lang') == 'en'
//                         ? Padding(
//                             padding: EdgeInsets.only(right: 18.w),
//                             child: SizedBox(
//                               width: 24.w,
//                               height: 24.h,
//                               child: SvgPicture.asset(
//                                 Images.tick,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           )
//                         : const SizedBox(),
//                   ]),
//                 ),
//               ),
//               SizedBox(
//                 height: 16.h,
//               ),
//               //bangla language
//               InkWell(
//                 onTap: () {
//                   languageController.changeLanguage("bn");
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.r),
//                     color: box.read('lang') == 'bn'
//                         ? AppColor.primaryColor.withOpacity(0.08)
//                         : Colors.white,
//                     border: box.read('lang') == 'bn'
//                         ? Border.all(color: AppColor.primaryColor)
//                         : Border.all(color: Colors.white),
//                   ),
//                   height: 56.h,
//                   width: 328.w,
//                   child: Row(children: [
//                     SizedBox(width: 16.w),
//                     SizedBox(
//                       width: 24.w,
//                       height: 24.h,
//                       child: Image.asset(
//                         Images.flagBd,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     SizedBox(width: 16.w),
//                     Text(
//                       "Bangla",
//                       style: fontMedium,
//                     ),
//                     const Spacer(),
//                     box.read('lang') == 'bn'
//                         ? Padding(
//                             padding: EdgeInsets.only(right: 18.w),
//                             child: SizedBox(
//                               width: 24.w,
//                               height: 24.h,
//                               child: SvgPicture.asset(
//                                 Images.tick,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           )
//                         : const SizedBox(),
//                   ]),
//                 ),
//               ),
//               SizedBox(
//                 height: 16.h,
//               ),
//               //arabic language
//               // InkWell(
//               //   onTap: () {
//               //     languageController.changeLanguage("ar");
//               //   },
//               //   child: Container(
//               //     decoration: BoxDecoration(
//               //       borderRadius: BorderRadius.circular(8.r),
//               //       color: box.read('lang') == 'ar'
//               //           ? AppColor.primaryColor.withOpacity(0.08)
//               //           : Colors.white,
//               //       border: box.read('lang') == 'ar'
//               //           ? Border.all(color: AppColor.primaryColor)
//               //           : Border.all(color: Colors.white),
//               //     ),
//               //     height: 56.h,
//               //     width: 328.w,
//               //     child: Row(children: [
//               //       SizedBox(width: 16.w),
//               //       SizedBox(
//               //         width: 24.w,
//               //         height: 24.h,
//               //         child: Image.asset(
//               //           Images.flagAr,
//               //           fit: BoxFit.cover,
//               //         ),
//               //       ),
//               //       SizedBox(width: 16.w),
//               //       Text(
//               //         "Arabic",
//               //         style: fontMedium,
//               //       ),
//               //       const Spacer(),
//               //       box.read('lang') == 'ar'
//               //           ? Padding(
//               //               padding: EdgeInsets.only(right: 18.w),
//               //               child: SizedBox(
//               //                 width: 24.w,
//               //                 height: 24.h,
//               //                 child: SvgPicture.asset(
//               //                   Images.tick,
//               //                   fit: BoxFit.cover,
//               //                 ),
//               //               ),
//               //             )
//               //           : const SizedBox(),
//               //     ]),
//               //   ),
//               // ),
//               // SizedBox(
//               //   height: 16.h,
//               // ),

//               //germany language
//               InkWell(
//                 onTap: () {
//                   languageController.changeLanguage("de");
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.r),
//                     color: box.read('lang') == 'de'
//                         ? AppColor.primaryColor.withOpacity(0.08)
//                         : Colors.white,
//                     border: box.read('lang') == 'de'
//                         ? Border.all(color: AppColor.primaryColor)
//                         : Border.all(color: Colors.white),
//                   ),
//                   height: 56.h,
//                   width: 328.w,
//                   child: Row(children: [
//                     SizedBox(width: 16.w),
//                     SizedBox(
//                       width: 24.w,
//                       height: 24.h,
//                       child: Image.asset(
//                         Images.flagDe,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     SizedBox(width: 16.w),
//                     Text(
//                       "Germany",
//                       style: fontMedium,
//                     ),
//                     const Spacer(),
//                     box.read('lang') == 'de'
//                         ? Padding(
//                             padding: EdgeInsets.only(right: 18.w),
//                             child: SizedBox(
//                               width: 24.w,
//                               height: 24.h,
//                               child: SvgPicture.asset(
//                                 Images.tick,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           )
//                         : const SizedBox(),
//                   ]),
//                 ),
//               ),
//               SizedBox(
//                 height: 16.h,
//               ),

//               //french language
//               // InkWell(
//               //   onTap: () {
//               //     languageController.changeLanguage("fr");
//               //   },
//               //   child: Container(
//               //     decoration: BoxDecoration(
//               //       borderRadius: BorderRadius.circular(8.r),
//               //       color: box.read('lang') == 'fr'
//               //           ? AppColor.primaryColor.withOpacity(0.08)
//               //           : Colors.white,
//               //       border: box.read('lang') == 'fr'
//               //           ? Border.all(color: AppColor.primaryColor)
//               //           : Border.all(color: Colors.white),
//               //     ),
//               //     height: 56.h,
//               //     width: 328.w,
//               //     child: Row(children: [
//               //       SizedBox(width: 16.w),
//               //       SizedBox(
//               //         width: 24.w,
//               //         height: 24.h,
//               //         child: Image.asset(
//               //           Images.flagFr,
//               //           fit: BoxFit.cover,
//               //         ),
//               //       ),
//               //       SizedBox(width: 16.w),
//               //       Text(
//               //         "French",
//               //         style: fontMedium,
//               //       ),
//               //       const Spacer(),
//               //       box.read('lang') == 'fr'
//               //           ? Padding(
//               //               padding: EdgeInsets.only(right: 18.w),
//               //               child: SizedBox(
//               //                 width: 24.w,
//               //                 height: 24.h,
//               //                 child: SvgPicture.asset(
//               //                   Images.tick,
//               //                   fit: BoxFit.cover,
//               //                 ),
//               //               ),
//               //             )
//               //           : const SizedBox(),
//               //     ]),
//               //   ),
//               // ),
//               // SizedBox(
//               //   height: 16.h,
//               // ),
//             ],
//           ),
//         ));
//   }
// }
