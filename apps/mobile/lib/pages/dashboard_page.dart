import 'package:flutter/material.dart';
import '../services/focus_score_service.dart';
import '../widgets/focus_score_card.dart';
import '../models/focus_score.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  FocusScore? focusScore;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadFocusScore();
  }

  Future<void> loadFocusScore() async {
    final data = await FocusScoreService.fetchFocusScore();
    setState(() {
      focusScore = data;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FocusFlow Dashboard')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : focusScore != null
              ? FocusScoreCard(score: focusScore!)
              : const Center(child: Text('Failed to load score')),
    );
  }
}
