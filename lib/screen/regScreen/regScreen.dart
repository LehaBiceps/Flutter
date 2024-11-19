import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class reg_screen extends StatefulWidget {
  @override
  _reg_screen createState() => _reg_screen();
}

class _reg_screen extends State<reg_screen> {
  final SupabaseClient supabase = Supabase.instance.client;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  Future<void> addUser() async {
    final email = _emailController.text;
    final password = _passController.text;
    final name = _nameController.text;
    await supabase.auth.signUp(
      data: {'username': name},
      email: email,
      password: password,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.only(right: 350, top: 40),
            child: IconButton(onPressed: ()
            {
              Navigator.pushReplacementNamed(context, '/');
            },
                icon: Image.asset('assets/back.png')),
          ),
          const Padding(padding: EdgeInsets.only(left: 20),
              child: Text('Регистрация',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700
                ),
              )
          ),
          const Padding(padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Text('Заполните Свои данные или продолжите через социальные медиа!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                ),
              )
          ),
          const Padding(padding: EdgeInsets.only(top: 30, right: 265),
              child: Text('Ваше имя',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                ),
              )
          ),
          Padding(padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: TextField(
              controller: _nameController,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              decoration:InputDecoration(
                  fillColor: const Color(0xFFF7F7F9),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none
                  ),
                  hintText: "ХХХХХХХ",
                  hintStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.black45)
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 30, right: 305),
              child: Text('Email',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                ),
              )
          ),
          Padding(padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: TextField(
              controller: _emailController,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              decoration:InputDecoration(
                  fillColor: const Color(0xFFF7F7F9),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "xyz@gmail.com",
                  hintStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.black45)
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
          Padding(padding: const  EdgeInsets.only(top: 10, left: 15, right: 15),
            child: TextField(
              controller: _passController,
              obscureText: true,
              obscuringCharacter: "·",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              decoration:InputDecoration(
                  fillColor: const Color(0xFFF7F7F9),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none
                  ),
                  hintText: "·············",
                  hintStyle: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15, color: Colors.black45)
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(left: 20, top: 10),
              child: TextButton.icon(
                onPressed: ()
                {

                },
                icon: Image.asset('assets/Vector.png'),
                label: const Text('Даю согласие на обработку персональных данных',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
          ),
          Padding(padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: ElevatedButton(onPressed: ()
            {
              addUser();
              Navigator.pushReplacementNamed(context, '/');
            },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    minimumSize: const Size(400, 60)
                ),
                child: const Text("Зарегистрироватеься",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Есть аккаунт? ",
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 16
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: const Text("Войти",
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
    );
  }
}