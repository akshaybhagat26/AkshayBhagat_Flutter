import 'package:akshay_bhagat_flutter/providers/go_router_provider.dart';
import 'package:akshay_bhagat_flutter/repo/hive_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  HiveRepo().registerAdapter();

  runApp(const ProviderScope(child: FitnessTracker()));
}

class FitnessTracker extends ConsumerStatefulWidget {
  const FitnessTracker({super.key});

  @override
  ConsumerState<FitnessTracker> createState() => _FinTechApp();
}

class _FinTechApp extends ConsumerState<FitnessTracker> {

  @override
  Widget build(BuildContext context) {
    final goRouterConfig = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouterConfig,
    );
  }
}