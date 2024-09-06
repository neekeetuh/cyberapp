import 'package:flutter/material.dart';

class LiveRepeatingIndicator extends StatefulWidget {
  const LiveRepeatingIndicator({
    super.key,
  });

  @override
  State<LiveRepeatingIndicator> createState() => _LiveRepeatingIndicatorState();
}

class _LiveRepeatingIndicatorState extends State<LiveRepeatingIndicator>
    with SingleTickerProviderStateMixin<LiveRepeatingIndicator> {
  late final _controller =
  AnimationController(vsync: this, duration: Durations.extralong4)
    ..addListener(_update);

  late final _anim = Tween<double>(begin: 1, end: 0).animate(_controller);

  @override
  void initState() {
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _anim,
      builder: (BuildContext context, Widget? child) {
        return Opacity(
          opacity: _anim.value,
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            height: 15,
            width: 15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.red),
          ),
        );
      },
    );
  }

  void _update() {
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}