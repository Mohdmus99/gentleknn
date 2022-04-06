import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/constants/string_constant.dart';
import 'package:gentleknn/entities/task.dart';
import 'package:gentleknn/utilities/default_values.dart';
import 'package:gentleknn/utilities/size_config.dart';
import 'package:gentleknn/components/general/buttons/mini_horizantal_button.dart';

class TaskCard extends StatelessWidget {
  TaskCard({
    // @required this.taskTitle,
    // @required this.taskDescription,
    // @required this.taskCommittee,
    required this.task,
    this.onEdit,
    this.onDelete,
  });

  // final String taskTitle;
  // final String taskDescription;
  // final String taskCommittee;
  final Task task;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            task.taskTitle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
          ),
          Flexible(
            flex: 2,
            child: Text(
              task.taskDescription,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            children: [
              Text(
                '${StringConstant.committee}: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Flexible(
                child: Text(
                  /// TODO: Here we should have a function from the utils: getCommitteeName(int committeeId);
                  task.committeeId.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SmallHorizontalButton(
                label: StringConstant.edit,
                buttonColor: Colors.green[200]!,
                fontColor: Colors.green[900]!,
                onPressed: onEdit ?? () => DefaultValues.emptyFunction,
              ),
              SmallHorizontalButton(
                label: StringConstant.delete,
                buttonColor: Colors.red[200]!,
                fontColor: Colors.red[900]!,
                onPressed: onDelete,
              ),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: kBoxShadow5Opacity,
      ),
      width: SizeConfig.screenWidth! / 2,
      height: SizeConfig.screenHeight! / 3.5,
    );
  }
}
