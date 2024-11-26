import 'package:flutter/material.dart';
import 'package:project_test/widget/appBar.dart';

class like_screen extends StatefulWidget {
  const like_screen({super.key});

  @override
  State<like_screen> createState() => _like_screenState();
}

class _like_screenState extends State<like_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F9),
      appBar: AppBar(
          backgroundColor: const Color(0xFFF7F7F9),
          title: Row(
            children: [
              IconButton(onPressed: ()
              {
                Navigator.pushReplacementNamed(context, '/home');
                  },
                  icon: Image.asset('assets/back2.png')),
              const Padding(padding: EdgeInsets.only(left: 87),
                child: Text("Избранное",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 88),
                child: IconButton(onPressed: ()
                {

                }, icon: Image.asset('assets/heart2.png')),
              )
            ],
          )
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Image.asset('assets/sneakers.png'),
          Image.asset('assets/sneakers2.png'),
          Image.asset('assets/sneakers2.png'),
          Image.asset('assets/sneakers2.png'),
          Image.asset('assets/sneakers2.png'),
          Image.asset('assets/sneakers2.png'),
        ],
      ),
      bottomNavigationBar: appBar(context),
    );
  }
}
