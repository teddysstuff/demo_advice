import 'package:demo_app1/modules/advice/advice_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: () {
              Get.to(() => const AdvicePage());
            },
            child: Container(
              // borderRadius
              decoration: BoxDecoration(
                  color: Colors.blue, // bg-blue-500
                  borderRadius: BorderRadius.circular(8), // rounded-lg
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 2,
                    )
                  ]),
              padding: const EdgeInsets.symmetric(
                  horizontal: 16, vertical: 8), // px-16 py-8

              child: const Text(
                '오늘의 명언 보기',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
