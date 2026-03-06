import '../models/resume_model.dart';
import 'firebase_service.dart';

class ResumeService {
  final FirebaseService firebaseService;

  ResumeService({required this.firebaseService});

  Future<String> saveResume(ResumeModel resume) {
    return firebaseService.createResume(resume.toMap());
  }

  Future<void> updateResume(String id, ResumeModel resume) {
    return firebaseService.updateResume(id, resume.toMap());
  }
}
