import 'package:akshay_bhagat_flutter/data/quote.dart';
import 'package:akshay_bhagat_flutter/network/dio_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentQuoteIndexProvider = StateProvider<int>((ref) => 1);

final quoteProvider = FutureProvider.family<Quote, int>((ref, id) async {
  final dioClient = ref.read(dioProvider);
  return dioClient.getQuote(id);
});