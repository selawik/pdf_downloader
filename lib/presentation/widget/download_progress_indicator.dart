import 'package:flutter/material.dart';

class DownloadProgressIndicator extends StatelessWidget {
  const DownloadProgressIndicator({
    Key? key,
    required this.value,
  }) : super(key: key);

  const DownloadProgressIndicator.notStarted({super.key}) : value = 0;

  const DownloadProgressIndicator.complete({super.key}) : value = 1;


  final double value;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      semanticsLabel: 'Linear progress indicator',
    );
  }
}
