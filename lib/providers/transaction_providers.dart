import 'package:akshay_bhagat_flutter/data/habit.dart';
import 'package:akshay_bhagat_flutter/repo/transaction_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final transactionNotifierProvider =
    StateNotifierProvider<TransactionNotifier, List<Habitdata>>((ref) {
  return TransactionNotifier();
});