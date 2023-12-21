import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> categoryStream =
        FirebaseFirestore.instance.collection('categories').snapshots();

    return StreamBuilder<QuerySnapshot>(
      stream: categoryStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Material(
            child: CircularProgressIndicator(color: Colors.yellow.shade900),
          );
        }

        if (snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text(
              'No Categories\n Added yet',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 30,
              ),
            ),
          );
        }
        return GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 6,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var data = snapshot.data!.docs[index];

              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: CachedNetworkImage(
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      imageUrl: data['image'],
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    data['categoryName'],
                    style: const TextStyle(fontSize: 15),
                  )),
                ],
              );
            });
      },
    );
  }
}
