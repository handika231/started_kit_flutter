import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Networking Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 20.sp, color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.r,
                backgroundImage: const NetworkImage(
                  'https://placehold.co/600x400/png',
                ),
              ),
              20.verticalSpace,
              const Text('Full name: '),
              4.verticalSpace,
              const Text('-'),
              20.verticalSpace,
              const Text('Email: '),
              4.verticalSpace,
              const Text('-'),
            ],
          ),
        ),
      ),
    );
  }
}
