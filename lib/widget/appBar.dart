import 'package:flutter/material.dart';

Widget appBar()
{
  return Stack(
    children: [
      Padding(padding: const EdgeInsets.only(top: 31),
        child: Image.asset('assets/button.png', width: double.infinity, fit: BoxFit.fitWidth),
      ),
      Positioned(
        top: 80,
        left: 20,
        child: IconButton(onPressed: ()
        {

        },
            icon: Image.asset('assets/home-2.png')),
      ),
      Positioned(
        top: 80,
        left: 90,
        child: IconButton(onPressed: ()
        {

        },
            icon: Image.asset('assets/heart.png')),
      ),
      Positioned(
        top: 80,
        left: 280,
        child: IconButton(onPressed: ()
        {

        },
            icon: Image.asset('assets/imgg.png')),
      ),
      Positioned(
        top: 80,
        left: 350,
        child: IconButton(onPressed: ()
        {

        },
            icon: Image.asset('assets/man.png')),
      ),
      Positioned(
        top: 10,
        left: 145,
        child: IconButton(onPressed: ()
        {

        },
            icon: Image.asset('assets/imgggg.png')),
      )
    ],
  );
}