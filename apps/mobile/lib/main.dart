void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FocusFlow',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: const Text('FocusFlow MVP')),
        body: const Center(child: Text('Welcome to FocusFlow!')),
      ),
    );
  }
}
