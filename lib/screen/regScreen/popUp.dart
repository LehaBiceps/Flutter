import 'package:flutter/material.dart';
import 'package:project_test/widget/allert.dart';

class pop_screen extends StatefulWidget {
  const pop_screen({super.key});

  @override
  State<pop_screen> createState() => _pop_screenState();
}

class _pop_screenState extends State<pop_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.only(right: 350, top: 40),
            child: IconButton(onPressed: ()
            {
              Navigator.pushReplacementNamed(context, '/reg');
            },
                icon: Image.asset('assets/back.png')),
          ),
          const Padding(padding: EdgeInsets.only(left: 20),
              child: Text('Забыл Пароль',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700
                ),
              )
          ),
          const Padding(padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Text('ну и даун ты конечно',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                ),
              )
          ),
          Padding(padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            child: TextField(
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              decoration:InputDecoration(
                  fillColor: Color(0xFFF7F7F9),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none
                  ),
                  hintText: "xyz@gmail.com",
                  hintStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.black45)
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            child: ElevatedButton(onPressed: ()
            {
              showForgotPasswordDialog(context);
            },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    minimumSize: const Size(400, 60)
                ),
                child: const Text("Отправить",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}
