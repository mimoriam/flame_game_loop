import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  runApp(
    GameWidget(
      game: MyFirstGame(),
    ),
  );
}

class MyFirstGame extends FlameGame {
  @override
  Future<void>? onLoad() {
    return super.onLoad();

    debugPrint("On-Load called!");
  }

  @override
  void update(double dt) {
    super.update(dt);

    debugPrint("Update called~ at $dt");
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    debugPrint("Game render called ♥");
  }
}
