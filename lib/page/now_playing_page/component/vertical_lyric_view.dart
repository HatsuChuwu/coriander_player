import 'dart:async';
import 'dart:math';

import 'package:coriander_player/lyric/lrc.dart';
import 'package:coriander_player/lyric/lyric.dart';
import 'package:coriander_player/page/now_playing_page/component/lyric_view_tile.dart';
import 'package:coriander_player/play_service/play_service.dart';
import 'package:flutter/material.dart';

class VerticalLyricView extends StatelessWidget {
  const VerticalLyricView({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    const loadingWidget = Center(
      child: SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(),
      ),
    );
    final noLyricWidget = Center(
      child: Text(
        "无歌词",
        style: TextStyle(fontSize: 22, color: scheme.onSecondaryContainer),
      ),
    );

    return Material(
      type: MaterialType.transparency,
      child: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(scrollbars: false),
        child: ListenableBuilder(
          listenable: PlayService.instance.lyricService,
          builder: (context, _) => FutureBuilder(
            future: PlayService.instance.lyricService.currLyricFuture,
            builder: (context, snapshot) => switch (snapshot.connectionState) {
              ConnectionState.none => loadingWidget,
              ConnectionState.waiting => loadingWidget,
              ConnectionState.active => loadingWidget,
              ConnectionState.done => snapshot.data == null
                  ? noLyricWidget
                  : _VerticalLyricScrollView(lyric: snapshot.data!),
            },
          ),
        ),
      ),
    );
  }
}

final LYRIC_VIEW_KEY = GlobalKey();

class _VerticalLyricScrollView extends StatefulWidget {
  const _VerticalLyricScrollView({super.key, required this.lyric});

  final Lyric lyric;

  @override
  State<_VerticalLyricScrollView> createState() =>
      _VerticalLyricScrollViewState();
}

class _VerticalLyricScrollViewState extends State<_VerticalLyricScrollView> {
  final playbackService = PlayService.instance.playbackService;
  final lyricService = PlayService.instance.lyricService;
  late StreamSubscription lyricLineStreamSubscription;
  final scrollController = ScrollController();

  List<LyricViewTile> lyricTiles = [
    LyricViewTile(line: LrcLine.defaultLine, opacity: 1.0)
  ];

  /// 用来定位到当前歌词
  final currentLyricTileKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    _initLyricView();
    lyricLineStreamSubscription =
        lyricService.lyricLineStream.listen(_updateNextLyricLine);
  }

  /// 加载当前歌词页面，获取并滚动到当前歌词行的位置
  void _initLyricView() {
    final next = widget.lyric.lines.indexWhere(
      (element) =>
          element.start.inMilliseconds / 1000 > playbackService.position,
    );
    int nextLyricLine = next == -1 ? widget.lyric.lines.length : next;
    lyricTiles = _generateLyricTiles(max(nextLyricLine - 1, 0));

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final targetContext = currentLyricTileKey.currentContext;
      if (targetContext == null) return;

      /// scroll to curr lyric line
      if (targetContext.mounted) {
        Scrollable.ensureVisible(
          targetContext,
          alignment: 0.25,
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
        );
      }
    });
  }

  void _seekToLyricLine(int i) {
    playbackService.seek(widget.lyric.lines[i].start.inMilliseconds / 1000);
    setState(() {
      lyricTiles = _generateLyricTiles(i);
    });
  }

  /// 当前歌词行100%透明度，上一句和下一句55%，其余10%
  /// 把[currentLyricTileKey]绑在当前歌词行上
  List<LyricViewTile> _generateLyricTiles(int mainLine) {
    return List.generate(
      widget.lyric.lines.length,
      (i) {
        if (mainLine >= 2 && i <= mainLine - 2) {
          return LyricViewTile(
            line: widget.lyric.lines[i],
            opacity: 0.10,
            onTap: () => _seekToLyricLine(i),
          );
        }
        if (mainLine >= 1 && i == mainLine - 1) {
          return LyricViewTile(
            line: widget.lyric.lines[i],
            opacity: 0.55,
            onTap: () => _seekToLyricLine(i),
          );
        }
        if (mainLine < widget.lyric.lines.length - 1 && i == mainLine + 1) {
          return LyricViewTile(
            line: widget.lyric.lines[i],
            opacity: 0.55,
            onTap: () => _seekToLyricLine(i),
          );
        }
        if (mainLine < widget.lyric.lines.length - 2 && i >= mainLine + 2) {
          return LyricViewTile(
            line: widget.lyric.lines[i],
            opacity: 0.10,
            onTap: () => _seekToLyricLine(i),
          );
        }
        return LyricViewTile(
          key: currentLyricTileKey,
          line: widget.lyric.lines[i],
          opacity: 1.0,
          onTap: () => _seekToLyricLine(i),
        );
      },
    );
  }

  void _updateNextLyricLine(int lyricLine) {
    lyricTiles = _generateLyricTiles(lyricLine);
    setState(() {});

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final targetContext = currentLyricTileKey.currentContext;
      if (targetContext == null) return;

      /// scroll to curr lyric line
      if (targetContext.mounted) {
        Scrollable.ensureVisible(
          targetContext,
          alignment: 0.25,
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      key: LYRIC_VIEW_KEY,
      controller: scrollController,
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: lyricTiles,
          ),
        ),
        const SliverFillRemaining(),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    lyricLineStreamSubscription.cancel();
    scrollController.dispose();
  }
}
