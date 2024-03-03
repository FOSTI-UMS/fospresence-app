import 'package:fospresence/core/utils/initial_animation.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory<InitialAnimation>(()=>
      InitialAnimation(animationDuration: 1000, animationIsPlaying: true));
}
