import 'package:flutter/material.dart';
import 'package:project_test/widget/appBar.dart';

class stark extends StatefulWidget {
  const stark({super.key});

  @override
  State<stark> createState() => _starkState();
}

class _starkState extends State<stark> {
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
                child: Text("Популярное",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 78),
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
    );
  }
}
