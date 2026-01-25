import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Core/Navigation/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _offsetAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    InitAnimation();

    NavigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 8.0),
          child: Image.asset(Assets.logo),
        ),
        AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return SlideTransition(
              position: _offsetAnimation,
              child: const Text(
                'Find Free Books You Love',
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ],
    );
  }

  void InitAnimation() {
    _animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 20),
      end: Offset.zero,
    ).animate(_animationController);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void NavigateToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      if (!mounted) return;
      GoRouter.of(context).go(Approuter.kHomePageURL);
    });
  }
}
