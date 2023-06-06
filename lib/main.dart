import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:journal/app/on.boarding/presentation/screens/on_boarding_screen.dart';
import 'package:journal/app/on.boarding/services/on_boarding_storage.dart';
import 'package:journal/core/presentation/routes/main_routes.dart';
import 'package:journal/core/presentation/theme/theme.dart';
import 'package:journal/core/presentation/ui/widgets/journal_text.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('es', 'CO'),
      ],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: const Locale('en', 'US'),
      child: const JournalApp(),
    ),
  );
}

class JournalApp extends StatelessWidget {
  const JournalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reading Journal',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: theme,
      routes: mainRoutes,
      initialRoute: HomePage.route,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  static const route = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _counter = 0;

  @override
  void initState() {
    _init();
    super.initState();
  }

  _init() async {
    final onBoarding = !(await OnBoardingStorage().get());
    if (onBoarding) {
      final snackBar = SnackBar(
        content: const Text('Yay! A SnackBar!'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.of(context).pushNamed(OnBoardingScreen.route);
      });
    }
  }

  void _incrementCounter() {
    OnBoardingStorage().set(false);
    Navigator.of(context).pushNamed(OnBoardingScreen.route);
    // setState(() {
    //   _counter++;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            JText('authentication.login_button'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        // onPressed: () {
        //   final easy = EasyLocalization.of(context);
        //   const colLocale = Locale('es', 'CO');
        //   const usLocale = Locale('en', 'US');
        //   final locale = easy?.locale == colLocale ? usLocale : colLocale;
        //   EasyLocalization.of(context)?.setLocale(locale);
        // },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
