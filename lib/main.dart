import 'package:flutter/material.dart';
import 'package:journal/app/on.boarding/presentation/screens/on_boarding_screen.dart';
import 'package:journal/app/on.boarding/services/on_boarding_storage.dart';
import 'package:journal/core/presentation/routes/main_routes.dart';
import 'package:journal/core/presentation/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reading Journal',
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
