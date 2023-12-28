import 'package:cloud_firestore/cloud_firestore.dart';

void getData() async {
  QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('your_collection').get();
  querySnapshot.docs.forEach((doc) {
    print(doc.data());
  });
}
