import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class sign_in extends StatefulWidget {
  @override
  _sign_in createState() => _sign_in();
}

class _sign_in extends State<sign_in> {
  final SupabaseClient supabase = Supabase.instance.client;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> signIn() async {
    {
      final email = _emailController.text;
      final pass = _passwordController.text;

      await supabase.auth.signInWithPassword(
        email: email,
        password: pass,
      );
    }
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(right: 350, top: 40),
                child: IconButton(onPressed: ()
                {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                    icon: Image.asset('assets/back.png')),
              ),
              const Padding(padding: EdgeInsets.only(left: 20),
                  child: Text('Привет!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700
                    ),
                  )
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Text(
                    'Заполните Свои данные или продолжите через социальные медиа',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),
                  )
              ),
              const Padding(padding: EdgeInsets.only(top: 30, right: 320),
                  child: Text('Email',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: TextField(
                  controller: _emailController,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      fillColor: const Color(0xFFF7F7F9),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none
                      ),
                      hintText: "xyz@gmail.com",
                      hintStyle: const TextStyle(fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black45)
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 30, right: 305),
                  child: Text('Пароль',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),
                  )
              ),
              Padding(padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  obscuringCharacter: "·",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      fillColor: const Color(0xFFF7F7F9),
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      hintText: "·············",
                      hintStyle: const TextStyle(fontWeight: FontWeight.w900,
                          fontSize: 15,
                          color: Colors.black45),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 280),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/pop');
                    },
                    child: const Text('Восстановить',
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: ElevatedButton(onPressed: () {
                  signIn();
                  Navigator.pushReplacementNamed(context, '/verif');
                },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        minimumSize: const Size(400, 60)
                    ),
                    child: const Text("Войти",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 220),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Вы впервые? ",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/reg');
                        },
                        child: const Text("Создать пользователя",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16
                          ),
                        ),
                      )
                    ],
                  )
              ),
            ],
          ),
        ),
      );
  }
}