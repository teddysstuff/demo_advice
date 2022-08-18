import 'dart:convert';
import 'package:demo_app1/global/model/advice.dart';
import 'package:dio/dio.dart';

Future<Advice> getAdvice() async {
  var response = await Dio().get('https://api.adviceslip.com/advice');
  var a = json.decode(response.data);
  return Advice(id: a['slip']['id'], advice: a['slip']['advice']);
}
