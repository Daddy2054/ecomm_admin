import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class WithdrawalList extends StatefulWidget {
  const WithdrawalList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WithdrawalListState createState() => _WithdrawalListState();
}

class _WithdrawalListState extends State<WithdrawalList> {
  final Stream<QuerySnapshot> _withdrewStream =
      FirebaseFirestore.instance.collection('withdrawal').snapshots();

  Widget withdrewdata(Widget widget, int? flex) {
    return Expanded(
      flex: flex!,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: widget,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _withdrewStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Center(child: Text('Something went wrong'));
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: LinearProgressIndicator());
        }

        return SizedBox(
          height: 400,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data!.docs.length,
            itemBuilder: ((context, index) {
              final withdrewData = snapshot.data!.docs[index];
              return Row(
                children: [
                  withdrewdata(
                      Text(
                        withdrewData['BankAccountName'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      1),
                  withdrewdata(
                      Text(
                        "\$  ${withdrewData['Amount']}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      3),
                  withdrewdata(
                      Text(
                        withdrewData['BankName'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      2),
                  withdrewdata(
                      Text(
                        withdrewData['BankAccountNumber'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      2),
                  withdrewdata(
                      Text(
                        withdrewData['Mobile'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      1),
                  withdrewdata(
                      Text(
                        withdrewData['Name'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      1)
                ],
              );
            }),
          ),
        );
      },
    );
  }
}
