import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:places/core/models/chat_user.dart';
import 'package:places/core/services/auth/auth_mock_service.dart';

abstract class AuthService {
  ChatUser? get currentUser;

  Stream<ChatUser?> get userChanges;

  Future<void> signup(
    String name,
    String email,
    String password,
    PlatformFile? image,
  );

  Future<void> login(
    String email,
    String password,
  );

  Future<void> logout();

  factory AuthService() {
    return AuthMockService();
    // return AuthFirebaseService();
  }
}
