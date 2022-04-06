import 'package:flutter/material.dart';
import 'package:gentleknn/components/club/small_club_card.dart';
import 'package:gentleknn/components/general/buttons/horizental_button.dart';
import 'package:gentleknn/entities/club.dart';
import 'package:gentleknn/entities/committee.dart';
import 'package:gentleknn/entities/student.dart';
import 'package:gentleknn/entities/task.dart';
// import 'package:gentleknn/fragments/club/mini_clubs_list_fragment.dart';
// import 'package:gentleknn/fragments/all_events_list_fragment.dart';
// import 'package:gentleknn/fragments/tasks_list_fragment.dart';
import 'package:gentleknn/screens/general/custom_appbar.dart';
import 'package:gentleknn/constants/constants.dart';
import 'package:gentleknn/components/general/user_name_card.dart';
import 'package:gentleknn/screens/general/signin_screen.dart';
import 'package:gentleknn/screens/general/signup_screen.dart';
import 'package:gentleknn/utilities/size_config.dart';

import 'package:gentleknn/entities/Item.dart';
import 'package:gentleknn/components/general/bottom_navigation_bar_x.dart';

import 'package:gentleknn/components/club/large_club_card.dart';

// import 'package:gentleknn/fragments/club/larg_clubs_list_fragment.dart';
import 'package:gentleknn/entities/event.dart';
// import 'package:gentleknn/fragments/events_list_fragment.dart';
// import 'package:gentleknn/fragments/my_profile_fragment.dart';
// import 'package:gentleknn/fragments/settings_fragment.dart';
// import 'package:gentleknn/fragments/club/mini_clubs_list_fragment.dart';
// import 'package:gentleknn/fragments/club/all_clubs_list_fragment.dart';

class VisitorMainScreen extends StatefulWidget {
  @override
  _VisitorMainScreenState createState() => _VisitorMainScreenState();
}

class _VisitorMainScreenState extends State<VisitorMainScreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Club> clubs = [
      Club('Robotics Club', 'assets/images/roboticsClub.PNG', "1222", "1332",
          'this is the club of robtocis inkfupm ', 12),
      Club('Robotics Club', 'assets/images/roboticsClub.PNG', "1222", "1332",
          'this is the club of robtocis inkfupm ', 12),
      Club('Robotics Club', 'assets/images/roboticsClub.PNG', "1222", "1332",
          'this is the club of robtocis inkfupm ', 12),
      Club('Robotics Club', 'assets/images/roboticsClub.PNG', "1222", "1332",
          'this is the club of robtocis inkfupm ', 12),
      Club('Robotics Club', 'assets/images/roboticsClub.PNG', "1222", "1332",
          'this is the club of robtocis inkfupm ', 12),
    ];
    List<Task> tasks = [
      Task(111, 'Flutter project', 'This task is assigned to ..', 221),
      Task(111, 'Flutter project', 'This task is assigned to ..', 221),
      Task(111, 'Flutter project', 'This task is assigned to ..', 221),
      Task(111, 'Flutter project', 'This task is assigned to ..', 221),
      Task(111, 'Flutter project', 'This task is assigned to ..', 221),
    ];

    List<Event> events = [
      Event(
          clubName: "Computer Club",
          eventName: "Microsoft Azure Workshop",
          eventDate: DateTime(2021, 2, 21, 17, 5),
          location: "MS Teams",
          imageUrl: 'assets/images/azureEvent.png',
          eventDescription: 'Description'),
      Event(
          clubName: "Computer Club",
          eventName: "Microsoft Azure Workshop",
          eventDate: DateTime(2021, 2, 21, 17, 5),
          location: "MS Teams",
          imageUrl: 'assets/images/azureEvent.png',
          eventDescription: 'Description'),
      Event(
          clubName: "Computer Club",
          eventName: "Microsoft Azure Workshop",
          eventDate: DateTime(2021, 2, 21, 17, 5),
          location: "MS Teams",
          imageUrl: 'assets/images/azureEvent.png',
          eventDescription: 'Description'),
    ];

    List<Widget> fragmentsList = [
      // AllEventsListFragment(
      //   theComingEvents: EventsListFragment(
      //     events: events,
      //     label: 'In Coming Events',
      //   ),
      //   allEvents: EventsListFragment(
      //     events: events,
      //     label: 'All Events',
      //   ),
      // ),
      // LargeClubsListFragment(
      //   clubs: clubs,
      //   isAdministrator: false,
      //   isClubOpen: false,
      // ),

      // LargClubsListFragment(clubs: clubs),
      /// TODO: Fix the SettingsFragment() widget, student var should not be required
      ///
      // SettingsFragment(
      //   student: Student('11', 's201010', 'Alsalboukh', 'Hussain', '11-22-2020',
      //       '027836492813', 'mohdmus', ['cs club', 'robo club']),
      // ),
      Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              BigHorizontalButton(
                label: 'Sign in',
                buttonColor: [
                  Colors.blue.withOpacity(0.8),
                  Colors.blue.withOpacity(0.8)
                ],
                fontColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New to KFUPM Clubs? ',
                    style: kNormalBoldTextStyle15.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      'Join us now',
                      style: kNormalBoldTextStyle15.copyWith(
                          decoration: TextDecoration.underline),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );

                      ///TODO: This function should direct the user to the Sign up page.
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ) // MyProfileFragment(
      //   student: Student('11', 's201010', 'Alsalboukh', 'Hussain', '11-22-2020',
      //       '027836492813', 'mohdmus', ['cs club', 'robo club']),
      // ),
    ];

    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 165.0),
              child: fragmentsList[_currentIndex],
            ),
            Container(
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(
                          top: 25, left: 25, right: 25, bottom: 10),
                      color: primaryColor,
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            margin: EdgeInsets.only(left: 15.0, right: 15.0),
                            decoration: BoxDecoration(
                                color: Colors.white.withAlpha(100),
                                borderRadius: BorderRadius.circular(25.0)),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search Here',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                    height: 90,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0)),
                          ),
                        ),
                        Positioned(
                          // bottom: 10.0,
                          left: SizeConfig.screenWidth! / 28,
                          right: SizeConfig.screenWidth! / 28,
                          child: UserNameCard(
                            onSignInOut: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignInScreen(),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarX(
        items: [
          Item(
            icon: Icon(Icons.event),
            title: Text('Events'),
          ),
          Item(
            icon: Icon(Icons.group_sharp),
            title: Text('Clubs'),
          ),
          Item(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          Item(
            icon: Icon(Icons.account_circle_outlined),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
      ),
    );
  }
}
