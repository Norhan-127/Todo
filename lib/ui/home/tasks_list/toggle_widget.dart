import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

void main() => runApp(app);

final Widget app = MaterialApp(home: Scaffold(body: Toggle()));

class Toggle extends StatefulWidget {
  @override
  _ToggleState createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool onTapState = false;
  bool toggleState = false;
  static const Color colorRed = Colors.red;
  static const Color colorGreen = Color(0xff61e757);

  void _handleTap(bool newState) {
    setState(() {
      onTapState = newState;
    });
  }

  void _handleToggle() {
    setState(() {
      toggleState = !toggleState;
    });
  }

  final _styledBox = ({
    required Widget child,
    required bool tapState,
    required bool toggleState,
  }) =>
      child
          .padding(all: 10)
          .constrained(height: 50, width: 90)
          .ripple(splashColor: Colors.white.withOpacity(0.1))
          .clipRRect(all: 30)
          .decorated(
        color: toggleState ? colorGreen : colorRed,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: toggleState
                ? colorGreen.withOpacity(0.3)
                : colorRed.withOpacity(0.3),
            blurRadius: 15,
            offset: Offset(0, 15),
          ),
        ],
        animate: true,
      )
          .scale(all:tapState ? 0.95 : 1, animate: true);

  final _styledOuterCircle = ({
    required Widget child,
    required bool toggleState,
  }) =>
      child
          .decorated(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      )
          .constrained(width: toggleState ? 10 : 30, height: 30, animate: true)
          .padding(right: toggleState ? 10 : 0, animate: true)
          .alignment(
        toggleState ? Alignment.centerRight : Alignment.centerLeft,
        animate: true,
      );

  final _styledInnerCircle = ({
    required bool toggleState,
  }) =>
      Styled.widget()
          .decorated(
        color: toggleState ? colorGreen : colorRed,
        borderRadius: BorderRadius.circular(6),
        animate: true,
      )
          .constrained(width: toggleState ? 0 : 12, height: 12, animate: true)
          .alignment(Alignment.center);

  @override
  Widget build(BuildContext context) {
    return _styledInnerCircle(toggleState: toggleState)
        .parent(({required Widget child}) => _styledOuterCircle(child: child, toggleState: toggleState))
        .parent(({required Widget child}) => _styledBox(child: child, tapState: onTapState, toggleState: toggleState))
        .gestures(onTapChange: _handleTap, onTap: _handleToggle)
        .alignment(Alignment.center)

        .animate(Duration(milliseconds: 300), Curves.easeOut);
  }
}