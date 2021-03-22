import 'package:cloud_firestore/cloud_firestore.dart';

class CommonService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<String> get terms async {
    String content = '';

    DocumentReference documentReference =
        _firebaseFirestore.collection('commons').doc('terms');

    content = (await documentReference.get()).get('content');
    //await Future.delayed(Duration(seconds: 5));

    return content.replaceAll('\\n', "\n");
  }
}
