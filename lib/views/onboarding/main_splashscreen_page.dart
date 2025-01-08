part of '../pages.dart';

class MainSplashScreenPage extends StatefulWidget {
  const MainSplashScreenPage({super.key});

  @override
  State<MainSplashScreenPage> createState() => _MainSplashScreenPageState();
}

class _MainSplashScreenPageState extends State<MainSplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingEducationalPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/images/onboarding/splashscreen_right.png',
                width: 300,
              ),
            ),
            Image.asset(
              'assets/images/onboarding/maduramart.png',
              width: 200,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                'assets/images/onboarding/splashscreen_left.png',
                width: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
