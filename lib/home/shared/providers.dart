import 'package:riverpod/riverpod.dart';

final categoryTabProvider = StateProvider<String>((ref) {
  return 'All';
});
