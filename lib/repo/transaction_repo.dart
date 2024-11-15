import 'package:akshay_bhagat_flutter/data/habit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

class TransactionNotifier extends StateNotifier<List<Habitdata>> {
  TransactionNotifier() : super([]) {
    _loadTransactions();
  }

  final _boxName = 'transactionBox';

  Future<void> _loadTransactions() async {
    final box = await Hive.openBox<Habitdata>(_boxName);
    state = box.values.toList();
  }

  Future<void> addTransaction(Habitdata transaction) async {
    final box = await Hive.openBox<Habitdata>(_boxName);
    await box.put(transaction.habitId, transaction);
    state = box.values.toList();
  }

  Future<void> deleteTransaction(String transactionId) async {
    final box = await Hive.openBox<Habitdata>(_boxName);
    await box.delete(transactionId);
    state = box.values.toList();
  }

  Future<void> editTransaction(String transactionId, Habitdata updatedTransaction) async {
    final box = await Hive.openBox<Habitdata>(_boxName);
    await box.put(transactionId, updatedTransaction);
    state = box.values.toList();
  }
}

final transactionNotifierProvider = StateNotifierProvider<TransactionNotifier, List<Habitdata>>((ref) {
  return TransactionNotifier();
});
