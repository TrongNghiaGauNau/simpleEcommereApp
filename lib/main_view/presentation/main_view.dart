import 'package:ecomerce_project/core/presentation/constants/ui_constants.dart';
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
        activeColor: Colors.deepOrange,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(icon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
