import 'package:flutter/material.dart';
import 'package:gentleknn/components/general/buttons/circular_icon_button.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/entities/event.dart';
import 'package:gentleknn/utilities/size_config.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({
    required this.event,
  });
  final Event event;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate: EventSliverDelegate(
                  event: this.event,
                  max: 500,
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildClubName(),
                        buildEventTitle(),
                        SizedBox(height: 20),
                        Column(
                          children: [
                            buildIconDescription(
                                event.location, Icons.location_on),
                            SizedBox(height: 20),
                            buildIconDescription(
                                event.getDate(), Icons.watch_later),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(event.eventDescription),
                        SizedBox(
                          height: 200,
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
          Positioned(
            top: 15.0,
            child: CircularIconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              circleColor: Colors.white.withOpacity(0.1),
              iconColor: Colors.black,
              icon: Icons.arrow_back,
            ),
          )
        ],
      ),
    );
  }

  Row buildIconDescription(String text, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          size: 23,
          color: goldGradients[1],
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Padding buildEventTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 70,
      ),
      child: Text(
        event.eventName,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Container buildClubName() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        event.clubName,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: goldGradients[1],
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );
  }
}

class EventSliverDelegate extends SliverPersistentHeaderDelegate {
  EventSliverDelegate({
    required this.event,
    required this.max,
  });
  final Event event;
  final double max;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    SizeConfig().init(context);
    //Default border radius
    Radius _defaultRadius = Radius.circular(25);
    //To adjust icon
    double _imageAdjustment = 110;
    //Rescaling image as we scroll
    double _imageWidth = _imageAdjustment - shrinkOffset / 6;
    return Stack(
      fit: StackFit.loose,
      children: [
        Image(
          image: AssetImage(event.imageUrl),
          width: SizeConfig.screenWidth,
          height: max,
          fit: BoxFit.cover,
        ),
        Container(
          width: SizeConfig.screenWidth,
          height: (max - shrinkOffset - 5).abs(), //To prevent negative height
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.8),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        buildWhiteBox(shrinkOffset, _defaultRadius),
        buildClubIcon(_imageAdjustment, shrinkOffset, _imageWidth)
      ],
    );
  }

  Positioned buildClubIcon(
      double _imageAdjustment, double shrinkOffset, double _imageWidth) {
    return Positioned(
      //Adjusting poisiton of club icon
      top: max - 25 - _imageAdjustment - shrinkOffset / 1.2,
      //Adjusting width of the icon
      width: _imageWidth,
      //Centering
      right: SizeConfig.screenWidth! / 2 - (_imageWidth) / 2,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 5),
          ],
          borderRadius: BorderRadius.circular(80),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Image(
            image: AssetImage('assets/images/computer_club.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Positioned buildWhiteBox(double shrinkOffset, Radius _defaultRadius) {
    return Positioned(
      top: max - shrinkOffset / 1.05 - 75,
      child: Container(
        height: 100,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: _defaultRadius, topRight: _defaultRadius),
        ),
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => this.max;

  @override
  // TODO: implement minExtent
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
