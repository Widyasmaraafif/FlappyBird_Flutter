// high_score_manager.dart
import 'package:shared_preferences/shared_preferences.dart';

class HighScoreManager {
  Future<void> saveHighScore(int score) async {
    final prefs = await SharedPreferences.getInstance();
    int? highScore = prefs.getInt('high_score') ?? 0;
    if (score > highScore) {
      await prefs.setInt('high_score', score);
    }
  }

  Future<int> getHighScore() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('high_score') ?? 0;
  }
}
