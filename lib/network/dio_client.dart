import 'package:akshay_bhagat_flutter/data/quote.dart';
import 'package:akshay_bhagat_flutter/network/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DioClient {
  final Dio _dio = Dio();

  DioClient() {
    _dio.options
      ..baseUrl = ApiService.currencyAPIUrl
      ..connectTimeout = const Duration(seconds: 30)
      ..receiveTimeout = const Duration(seconds: 20)
      ..headers = {'Content-Type': 'json/application'};
  }

   Future<Quote> getQuote(int id) async {
    try {
      final response = await _dio.get('${ApiService.quotesEndpoint}/$id');
      
      if (response.statusCode == 200) {
        return Quote.fromJson(response.data);
      } else {
        throw Exception('Failed to load quote');
      }
    } catch (e) {
      throw Exception('Error fetching quote: $e');
    }
  }
}

final dioProvider = Provider<DioClient>((ref) => DioClient());
