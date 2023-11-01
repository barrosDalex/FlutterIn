import 'package:places/core/models/chat_user.dart';
import 'package:places/core/services/auth/auth_service.dart';
import 'package:places/pages/auth_page.dart';
import 'package:places/pages/chat_page.dart';
import 'package:places/pages/loading_page.dart';
import 'package:flutter/material.dart';

class AuthOrAppPage extends StatelessWidget {
  const AuthOrAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<ChatUser?>(
        stream: AuthService().userChanges,
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingPage();
          } else {
            return snapshot.hasData ? const ChatPage() : const AuthPage();
          }
        },
      ),
    );
  }
}
