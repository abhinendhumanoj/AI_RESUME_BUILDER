import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> createResume(Map<String, dynamic> resumeData) async {
    final doc = await _firestore.collection('Resumes').add(resumeData);
    return doc.id;
  }

  Future<void> updateResume(String resumeId, Map<String, dynamic> data) {
    return _firestore.collection('Resumes').doc(resumeId).update(data);
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getResumesForUser(String userId) {
    return _firestore
        .collection('Resumes')
        .where('user_id', isEqualTo: userId)
        .snapshots();
  }
}
