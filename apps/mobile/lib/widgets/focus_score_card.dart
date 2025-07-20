import 'package:flutter/material.dart';
import '../models/focus_score.dart';

class FocusScoreCard extends StatelessWidget {
  final FocusScore score;

  const FocusScoreCard({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Focus Score', style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 10),
            Text('${score.score.toStringAsFixed(1)} / 100', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(score.status, style: TextStyle(color: Colors.grey[600])),
            const SizedBox(height: 10),
            Text('Updated: ${score.timestamp.hour}:${score.timestamp.minute.toString().padLeft(2, '0')}'),
          ],
        ),
      ),
    );
  }
}
