import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(onPressed: ()
            {

            }, icon: Image.asset('assets/Hamburger.png')),
            const Padding(padding: EdgeInsets.only(left: 82),
              child: Text("Главная",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 68),
              child: IconButton(onPressed: ()
              {

              }, icon: Image.asset('assets/shop.png')),
            )
          ],
        )
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                child: Expanded(child:
                Padding(padding: const EdgeInsets.only(left: 20, right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Поиск',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.grey)
                      )
                    ),
                  ),
                ),
              ),
              ),
              IconButton(onPressed: ()
              {

              }, icon: Image.asset('assets/setting.png'))
            ],
          )
        ],
      ),
    );
  }
}
