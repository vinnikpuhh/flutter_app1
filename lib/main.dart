import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/custom_icon_icons.dart';

//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg/svg.dart';

void main() => runApp(FlutterTutorialApp());

class FlutterTutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer Demo'),
          backgroundColor: Colors.grey[500],
        ),
        drawer: Drawer(
          child: Container(
            width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(50),
              ),
              color: Color(0xfff2f2f2),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 105,
                  top: 65,
                  child: Text(
                    "Juanita Nguyen",
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 14,
                      fontFamily: "Noto Sans",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 105,
                  top: 80,
                  child: Text(
                    "somemail@mail.com",
                    style: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 14,
                      fontFamily: "Noto Sans",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  top: 60,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            new AssetImage('assets/Images/export/Ellipse.png'),
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 255,
                  top: 69,
                  child: Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.all(3),
                    child: IconButton(
                      icon: Icon(
                        CustomIcon.out,
                        size: 25.0,
                        color: Colors.grey[700],
                      ),
                      onPressed: () {
                        print(
                            "Иконка Out в виджете Drawer нажата"); //воспользовался синтаксисом анонимной функции для проверки работоспособности
                      },
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 135,
                  child: Container(
                    width: 330,
                    height: 45,
                    padding: const EdgeInsets.only(
                      left: 45,
                      right: 211,
                      top: 11,
                      bottom: 12,
                    ),
                    child: Text(
                      "Все меню",
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 180,
                  child: Container(
                    width: 330,
                    height: 45,
                    padding: const EdgeInsets.only(
                      left: 45,
                      right: 51,
                      top: 11,
                      bottom: 12,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Заказы",
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 16,
                            ),
                          ),
                          width: 200,
                        ),
                        Container(
                          child: Text(
                            "  1",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xfff2c94c),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 225,
                  child: Container(
                    width: 330,
                    height: 45,
                    padding: const EdgeInsets.only(
                      left: 45,
                      right: 51,
                      top: 11,
                      bottom: 12,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            "Корзина",
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 16,
                            ),
                          ),
                          width: 200,
                        ),
                        Container(
                          child: Text(
                            "  3",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xfff2c94c),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
