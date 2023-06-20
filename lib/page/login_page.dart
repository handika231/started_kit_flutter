import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: DefaultTextStyle(
        style: TextStyle(fontSize: 20.sp, color: Colors.black),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          children: [
            Lottie.network(
              'https://assets5.lottiefiles.com/packages/lf20_9yi1cm7i.json',
              frameBuilder: (context, child, composition) {
                return AnimatedOpacity(
                  opacity: composition == null ? 0 : 1,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeOut,
                  child: child,
                );
              },
            ),
            Text(
              'Login',
              style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w600),
            ),
            4.verticalSpace,
            const Text(
              'Welcome back, please login to your account',
              style: TextStyle(color: Colors.grey),
            ),
            20.verticalSpace,
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            8.verticalSpace,
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            20.verticalSpace,
            SizedBox(
              height: 55,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: ElevatedButton(
                  onPressed: () {
                    // context.router.pop();
                  },
                  child: const Text('Login'),
                ),
              ),
            ),
            50.verticalSpace,
          ],
        ),
      )),
    );
  }
}
