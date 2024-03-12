import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fospresence/config/routes/route_name.dart';
import 'package:fospresence/core/constants/font.dart';

import '../../../../../core/constants/colors.dart';

class DetailEventSearch extends StatelessWidget {
  const DetailEventSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        children: [
          Container(
            width: 23,
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  style: textWhite14,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: SvgPicture.asset("assets/svg/search.svg"),
                    ),
                    suffixIcon: const Icon(Icons.close),
                    hintText: "Ketik nama peserta...",
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 0.2, color: lightGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, RouteName.qrCodeScannerScreen),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0.2),
                      color: primaryColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: SvgPicture.asset(
                    "assets/svg/scan_qr_code.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
              ),
              const SizedBox(width: 10)
            ],
          ),
        ],
      ),
    );
  }
}
