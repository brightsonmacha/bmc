import 'package:bmc/screens/home/home.dart';
import 'package:bmc/screens/result/result.dart';
import 'package:bmc/screens/welcome/welcome.dart';
import 'package:bmc/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  runApp(const BmCalculator());
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
}

class BmCalculator extends StatelessWidget {
  const BmCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: themeData,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/home': (context) => const HomeScreen(),
        '/result': (context) => const ResultPage()
      },
    );
  }
}
