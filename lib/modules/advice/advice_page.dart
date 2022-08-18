import 'package:demo_app1/global/api.dart';
import 'package:demo_app1/global/model/advice.dart';
import 'package:flutter/material.dart';

class AdvicePage extends StatefulWidget {
  const AdvicePage({Key? key}) : super(key: key);

  @override
  State<AdvicePage> createState() => _AdvicePageState();
}

class _AdvicePageState extends State<AdvicePage> {
  bool isLoading = false;
  Advice? advice;

  fetchAdvice() async {
    isLoading = true;
    setState(() {});
    advice = await getAdvice(); //1초정도걸림
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    fetchAdvice();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('오늘의 명언'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.report),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator.adaptive()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (advice != null) Text('${advice!.id}'),
                    const SizedBox(
                      height: 8,
                    ),
                    if (advice != null) Text(advice!.advice),
                  ],
                ),
        ),
      ),
    );
  }
}
