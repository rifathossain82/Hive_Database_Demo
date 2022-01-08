import 'package:hive/hive.dart';
import 'package:hive_database_demo/model/transaction.dart';

class Boxes{
  static Box<Transaction> getTransaction()=>
      Hive.box<Transaction>('transactions');
}