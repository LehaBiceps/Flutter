import 'package:flutter/material.dart';

class outdoor extends StatefulWidget {
  const outdoor({super.key});

  @override
  State<outdoor> createState() => _outdoorState();
}

class _outdoorState extends State<outdoor> {
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
                child: Text("Outdoor",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
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


