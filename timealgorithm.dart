
import 'dart:io';


void main() {

   List<Map<String, dynamic>> caasitechMembers = [];

  while (true) {
    // Get user input
    stdout.write("Enter member's name (or type 'exit' to finish): ");
    String name = stdin.readLineSync()!;

    if (name.toLowerCase() == 'exit') {
      break;
    }

    stdout.write("Enter arrival time (in 24-hour format HH:mm): ");
    String arrivalTimeStr = stdin.readLineSync()!;
    List<String> arrivalTimeParts = arrivalTimeStr.split(':');

    int hour = int.parse(arrivalTimeParts[0]);
    int minute = int.parse(arrivalTimeParts[1]);

    // Determine arrival status and comment
    String arrivalStatus = (hour < 9) ? 'early' : 'late';
    String comment = (arrivalStatus == 'early') ? 'Great you are early today' : 'Be early tomorrow!';

    // Store member information
    Map<String, dynamic> memberInfo = {
      'name': name,
      'arrivalStatus': arrivalStatus,
      'arrivalTime': '$hour:$minute',
      'comment': comment,
    };

    caasitechMembers.add(memberInfo);
  }

  // Print member information
  for (var member in caasitechMembers) {
    print("\nName: ${member['name']}");
    print("Status: ${member['arrivalStatus']}");
    print("Arrival Time: ${member['arrivalTime']}");
    print("Comment: ${member['comment']}");
  }
}

