import 'package:ecomerce_project/auth/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  // final String uid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () =>
                ref.read(authNotifierProvider.notifier).logout(context),
            child: Text("log out"),
          ),
        ],
      ),
    );
    // final user = ref.watch(userControllerProvider);
    // useEffect(() {
    //   Future(() =>
    //       ref.read(userControllerProvider.notifier).getUserDetailInfo(uid));
    //   return null;
    // }, [uid]);

    // return DefaultTabController(
    //   length: 2,
    //   initialIndex: 0,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Profile'),
    //     ),
    //     body: user.when(
    //       init: () => const Center(
    //         child: Text('Can not get user information'),
    //       ),
    //       data: (userData, tweetsData) {
    //         return ProfileBody(
    //           user: userData,
    //           userTweet: tweetsData,
    //         );
    //       },
    //       error: () => const ErrorText(error: 'Can not get user information'),
    //       loading: () => const Loader(),
    //     ),
    //   ),
    // );
  }
}
