import 'package:akshay_bhagat_flutter/providers/transaction_providers.dart';
import 'package:akshay_bhagat_flutter/ui/screens/habit_stat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryDetailsScreen extends ConsumerWidget {
  final String categoryName;

  const CategoryDetailsScreen({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactions = ref.watch(transactionNotifierProvider);

    final filteredTransactions = transactions
        .where((transaction) => transaction.habitCategory == categoryName)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: filteredTransactions.isEmpty
          ? const Center(
              child: Text(
                'No Habits in this category',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: filteredTransactions.length,
              itemBuilder: (context, index) {
                final transaction = filteredTransactions[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: TransactionCard(transaction: transaction),
                );
              },
            ),
    );
  }
}
