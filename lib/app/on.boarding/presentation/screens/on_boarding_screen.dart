
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:journal/app/on.boarding/services/on_boarding_storage.dart';
import 'package:journal/core/presentation/ui/images/svgs.dart';
import 'package:journal/main.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  static const route = '/on_boarding';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: OnBoardingSlider(
        finishButtonText: 'Hola',
        // hasSkip: false,
        // skipIcon: Icon(Icons.abc_outlined),
        skipTextButton: const Text(
          'Skip',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        addController: false,
        hasFloatingButton: true,
        onFinish: () async {
          await OnBoardingStorage().set(true);
          // ignore: use_build_context_synchronously
          await Navigator.of(context).pushNamedAndRemoveUntil(
            HomePage.route,
            (route) => false,
          );
        },
        totalPage: 3,
        headerBackgroundColor: Colors.transparent,
        pageBodies: const [
          OnBoardingBody(
            title: 'On your way...',
            description: 'to find the perfect looking Onboarding for your app?',
          ),
          OnBoardingBody(
            title: 'Second one',
            description: 'muajajjajajajaj',
          ),
          OnBoardingBody(
            title: 'Third one',
            description: 'muajajjajajajaj',
          ),
        ],
        speed: 5,
        background: [
          SvgPicture.asset(
            JournalSVGS.bookShelves.routeAsset,
            width: size.width,
          ),
          SvgPicture.asset(
            JournalSVGS.readingBook.routeAsset,
            width: size.width,
          ),
          SvgPicture.asset(
            JournalSVGS.bookShelves.routeAsset,
            width: size.width,
          ),
        ],
      ),
    );
  }
}

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    super.key,
    required this.title,
    this.description = '',
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 480,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              // color: kDarkBlueColor,
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black26,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
