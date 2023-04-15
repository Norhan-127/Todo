import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:todo/ui/home/tasks_list/toggle_widget.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.005),
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.03),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.onSurface,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            VerticalDivider(
              width: 20,
              thickness: 4,
              color: Theme.of(context).primaryColor,
            ),
            Column(
              children: [
                Expanded(
                  child: Text('Play BasketBall')
                      .textColor(Theme.of(context).primaryColor)
                      .fontSize(25)
                      .bold(),
                ),
                Spacer(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(CupertinoIcons.clock),
                      Text('12/7/2002').textColor(Colors.grey).fontSize(20),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Expanded(child: Toggle()),
          ],
        ),
      ),
    );
  }
}
