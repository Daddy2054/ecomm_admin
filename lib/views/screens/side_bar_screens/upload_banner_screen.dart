import 'package:flutter/material.dart';

class UploadBannerScreen extends StatelessWidget {
  const UploadBannerScreen({super.key});
  static const String routeName = 'upload-banner-Screen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Manage Upload Banners',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
          ),
        ],
      ),
    );
  }
}