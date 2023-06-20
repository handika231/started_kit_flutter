import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
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
          )
        ],
      )),
    );
  }
}
