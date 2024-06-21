import 'package:coriander_player/lyric/krc.dart';
import 'package:coriander_player/lyric/lrc.dart';
import 'package:coriander_player/lyric/qrc.dart';
import 'package:coriander_player/play_service.dart';
import 'package:flutter/material.dart';

class LyricSourceLabel extends StatelessWidget {
  const LyricSourceLabel({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ValueListenableBuilder(
          valueListenable: PlayService.instance.currentLyric,
          builder: (context, lyric, _) {
            late final String decription;
            bool isLocal = false;
            if (lyric is Lrc) {
              decription = lyric.source.name;
              isLocal = lyric.source == LrcSource.local;
            } else if (lyric is Krc) {
              decription = "Kugou";
            } else if (lyric is Qrc) {
              decription = "QQ";
            } else {
              decription = "无";
              isLocal = !isLocal;
            }
            return TextButton(
              onPressed: isLocal
                  ? PlayService.instance.useOnlineLyric
                  : PlayService.instance.useEmbeddedLyric,
              child: Text(
                decription,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: scheme.onSecondaryContainer,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
