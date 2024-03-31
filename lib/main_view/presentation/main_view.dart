import 'package:ecomerce_project/core/presentation/constants/color.dart';
import 'package:ecomerce_project/core/presentation/constants/ui_constants.dart';
import 'package:ecomerce_project/product_detail/shared/providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainView extends HookConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = useState(0);

    void onPageChange(int index) {
      if (index == 0) {
        ref.read(randomProductProvider.notifier).getRandomProduct();
      }
      page.value = index;
    }

    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: page.value,
          children: UIConstants.bottomTabBarPages,
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: page.value,
        onTap: onPageChange,
        activeColor: colorPrimmary,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag)),
          BottomNavigationBarItem(icon: Icon(Icons.local_shipping)),
          BottomNavigationBarItem(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
