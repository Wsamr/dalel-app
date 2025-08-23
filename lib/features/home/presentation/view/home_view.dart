import 'package:dalel_app/core/Routes/routes_name.dart';
import 'package:dalel_app/core/functions/navigtion_fun.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
            pushReplacementNavigtion(context, RoutesName.signIn);
          },
          icon: Icon(Icons.logout),
        ),
      ),
      body: Center(child: Text("Home")),
    );
  }
}
