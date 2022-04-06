class Event {
  Event({
    required this.eventName,
    required this.clubName,
    required this.imageUrl,
    required this.location,
    required this.eventDate,
    required this.eventDescription,
    this.registrationLink,
  });

  String eventName;
  String clubName;
  String imageUrl;
  String location;
  DateTime eventDate;
  String eventDescription;
  String? registrationLink;

  String getDate() {
    //List of months
    List<String> months = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ];

    // To configure the minutes
    String minute = this.eventDate.minute < 10
        ? '0${this.eventDate.minute}'
        : this.eventDate.minute.toString();

    // AM or PM
    String ampm = this.eventDate.hour > 12 ? "PM" : "AM";

    return '${this.eventDate.day} ${months[this.eventDate.month - 1]}, ${this.eventDate.hour % 12}:$minute '
        '$ampm';
  }
}

// //List of events to be generated using ListView.builder
// List<Event> events = [
//   new Event(
//     clubName: "Computer Club",
//     eventName: "Microsoft Azure Workshop",
//     eventDate: new DateTime(2021, 2, 21, 17, 5),
//     location: "MS Teams",
//     imageUrl: 'assets/images/azureEvent.png',
//   ),
//   new Event(
//     clubName: "Computer Club",
//     eventName: "VueJS Workshop",
//     eventDate: new DateTime(2021, 3, 12, 21, 20),
//     location: "Zoom",
//     imageUrl: 'assets/images/vueEvent.png',
//   ),
//   new Event(
//     clubName: "Computer Club",
//     eventName: "COOP Training for CS and SWE Students",
//     eventDate: new DateTime(2021, 3, 12, 21, 20),
//     location: "Zoom",
//     imageUrl: 'assets/images/coopEvent.png',
//   ),
// ];
