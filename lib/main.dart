import 'package:flutter/material.dart';
import 'package:hive_database_demo/model/transaction.dart';
import 'package:hive_database_demo/pages/TransactionPage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
//import 'package:build_runner/build_runner.dart';
//import 'package:hive_generator/hive_generator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<Transaction>('transactions');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hive Database Demo',
      home: TransactionPage(),
    );
  }
}

