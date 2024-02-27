import 'package:day_night_time_picker/lib/state/state_container.dart';
import 'package:flutter/material.dart';

/// Just a simple [Container] with common styling
class WrapperContainer extends StatelessWidget {
  /// The child [Widget] to render
  final Widget child;

  /// The height of the Wheel section
  final double? heightOfWheel;

  /// Constructor for the [Widget]
  const WrapperContainer({
    Key? key,
    required this.child,
    this.heightOfWheel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timeState = TimeModelBinding.of(context);
    final height = timeState.widget.is24HrFormat
        ? 200.0
        : timeState.widget.wheelHeight ?? 240.0;

    return Container(
      height: height,
      color: timeState.widget.backgroundColor ?? Theme.of(context).cardColor,
      padding: const EdgeInsets.only(
        left: 12.0,
        top: 12.0,
        right: 12.0,
      ),
      child: child,
    );
  }
}
