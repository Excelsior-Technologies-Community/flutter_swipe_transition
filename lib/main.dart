import 'package:flutter/material.dart';
import 'package:flutter_swipe_transition/src/swipe_transition.dart';

import 'direction_model/direction_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Swipe Transition',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _navigate(BuildContext context, SwipeDirection direction) {
    Navigator.push(
      context,
      SwipeTransitionRoute(
        direction: direction,
        page: DetailPage(title: direction.name, id: 101),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Swipe Transition')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => _navigate(context, SwipeDirection.rightToLeft),
              child: const Text('Swipe Right → Left'),
            ),
            ElevatedButton(
              onPressed: () => _navigate(context, SwipeDirection.leftToRight),
              child: const Text('Swipe Left → Right'),
            ),
            ElevatedButton(
              onPressed: () => _navigate(context, SwipeDirection.topToBottom),
              child: const Text('Swipe Top → Bottom'),
            ),
            ElevatedButton(
              onPressed: () => _navigate(context, SwipeDirection.bottomToTop),
              child: const Text('Swipe Bottom → Top'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  final int id;

  const DetailPage({super.key, required this.title, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          'Passed ID: $id',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
