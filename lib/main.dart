import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_test/regScreen/popUp.dart';
import 'package:project_test/regScreen/regScreen.dart';
import 'package:project_test/regScreen/signIn.dart';
import 'package:project_test/regScreen/verif.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://adixszcdaqqccxmuykpa.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFkaXhzemNkYXFxY2N4bXV5a3BhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzEwNDYwODAsImV4cCI6MjA0NjYyMjA4MH0.gM_pUJF8azOoLv9q-VXJIIv1URLdMtGRNhGPdPQHocM',
  );

  runApp(MaterialApp(
    initialRoute: '/',
    routes:
    {
      '/': (context) => const sign_in(),
      '/reg': (context) => reg_screen(),
      '/pop': (context) => const pop_screen(),
      '/verif': (context) => const verification_screen()
    },
  ));
}