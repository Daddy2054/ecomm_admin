import 'package:flutter/material.dart';

class VendorScreen extends StatefulWidget {
  static const String routeName = 'vendorScreen';

  const VendorScreen({super.key});

  @override
  State<VendorScreen> createState() => _VendorScreenState();
}

class _VendorScreenState extends State<VendorScreen> {
  Widget _rowHeader(int flex, String text) {
    return Expanded(
        flex: flex,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade700),
            color: Colors.yellow.shade900,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Manage Vendors',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  _rowHeader(1, 'LOGO'),
                  _rowHeader(3, 'BUSSINESS NAME'),
                  _rowHeader(2, 'CITY'),
                  _rowHeader(2, 'STATE'),
                  _rowHeader(1, 'ACTION'),
                  _rowHeader(1, 'VIEW MORE'),
                ],
              ),
              // VendorsList(),
            ],
          ),
        ),
      ),
    );
  }
}
