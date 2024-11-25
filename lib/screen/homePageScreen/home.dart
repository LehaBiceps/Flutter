import 'package:flutter/material.dart';
import 'package:project_test/widget/appBar.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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

            }, icon: Image.asset('assets/Hamburger.png')),
            const Padding(padding: EdgeInsets.only(left: 82),
              child: Text("Главная",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
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
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: ('Поиск'),
                        prefixIcon: const Icon(Icons.search),
                        hintStyle: const TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.black45
                        ),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: Image.asset('assets/settings.png'),
                  onPressed: ()
                  {

                  },
                ),
              ],
            ),
          ),
          const Padding(padding:EdgeInsets.only(top: 10, right: 300),
            child: Text('Категории',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 20, left: 10),
            child: Row(
              children: [
                ElevatedButton(onPressed: ()
                {

                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(110, 50),
                    ),
                    child: const Text('Все',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    )
                ),
                Padding(padding: const EdgeInsets.only(left: 25),
                  child: ElevatedButton(onPressed: ()
                  {

                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(110, 50),
                      ),
                      child: const Text('Outdoor',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      )
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left: 25),
                  child: ElevatedButton(onPressed: ()
                  {

                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(110, 50),
                      ),
                      child: const Text('Tennis',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      )
                  ),
                )
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 25, left: 10),
              child: Row(
                children: [
                  const Text("Популярное                                                                ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: const Text("Все",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  )
                ],
              )
          ),
          Padding(padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                IconButton(onPressed: ()
                {

                }, icon: Image.asset('assets/sneakers.png')
                ),
                Padding(padding: const EdgeInsets.only(left: 20),
                  child: IconButton(onPressed: ()
                  {

                  }, icon: Image.asset('assets/sneakers2.png')),
                )

              ],
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 35, left: 10),
              child: Row(
                children: [
                  const Text("Акции                                                                          ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: const Text("Все",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  )
                ],
              )
          ),
          Padding(padding: const EdgeInsets.only(top: 20),
            child: Image.asset('assets/img.png'),
          ),
          appBar(),
        ],
      ),
    );
  }
}


