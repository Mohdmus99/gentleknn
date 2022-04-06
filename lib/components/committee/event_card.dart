import 'package:flutter/material.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/constants/string_constant.dart';
import 'package:gentleknn/entities/event.dart';
import 'package:gentleknn/utilities/size_config.dart';
import 'package:gentleknn/components/general/buttons/popup_menu_button_x.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    required this.event,
    // this.width,
    // this.height,
    this.onSelected,
  });

  final Event event;
  // final double width;
  // final double height;
  final Function? onSelected;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    final BorderRadius cardBorderRadius = BorderRadius.circular(15);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return EventScreen(event: this.event);
          //     },
          //   ),
          // );
        },
        child: Container(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: cardBorderRadius,
                child: Image(
                  height: SizeConfig.screenHeight!,
                  width: SizeConfig.screenWidth! * .51,
                  fit: BoxFit.cover,
                  image: AssetImage(event.imageUrl),
                ),
              ),
              Container(
                height: SizeConfig.screenHeight!,
                width: SizeConfig.screenWidth! * .51,
                decoration: BoxDecoration(
                  borderRadius: cardBorderRadius,
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(.2),
                    Colors.black.withOpacity(.65),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 170,
                        child: Text(
                          event.eventName,
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        event.clubName,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      _IconText(icon: Icons.location_pin, text: event.location),
                      SizedBox(height: 5),
                      _IconText(
                          icon: Icons.calendar_today, text: event.getDate()),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 5.0,
                child: Container(
                  child: PopUpMenuButtonX(
                    popUpMenuItems: [
                      PopupMenuItem(
                        child: Text(StringConstant.removeEvent),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text(StringConstant.editEvent),
                        value: 2,
                      )
                    ],
                    onSelect: (value) {
                      print(value);
                      switch (value) {
                        case 1:
                          {
                            ///TODO: Procedure to remove an Event.
                          }
                          break;
                        case 2:
                          {
                            ///TODO: Procedure to edit an Event.
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => EventFormScreen(
                            //       event: event,
                            //     ),
                            //   ),
                            // );
                          }
                          break;
                      }
                    },
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55.0),
                    color: Colors.white.withOpacity(0.13),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// _IconText is a private class used within this file only
class _IconText extends StatelessWidget {
  const _IconText({
    required this.text,
    required this.icon,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: primaryColor,
          size: 16,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 11),
        ),
      ],
    );
  }
}
