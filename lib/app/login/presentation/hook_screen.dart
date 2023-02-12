import 'package:flutter/material.dart';
import 'package:flutter_base_architecture/app/common/repository/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HookScreen extends ConsumerWidget {
  const HookScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hook Screen'),
            50.verticalSpace,
            OutlinedButton(
              onPressed: () =>
                  ref.read(authRepositoryProvider.notifier).login(),
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
