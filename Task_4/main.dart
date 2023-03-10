import 'dart:io';
void main()
{
  while(1)
  {
    
    print("\nHotel Reservation System\n");
    print("1. Creat An Reservation");
    print("2. View Reservations Data"); //creat future
    print("3. Exit");
    print("Enter your choice From 1->3: ");
    int choice = int.parse(stdin.readLineSync()!);
    if (choice == 1) {
      print("Enter Reservation date : ");
      DateTime resDate = DateTime.parse(stdin.readLineSync()!);
      print("Enter Exit date: ");
      DateTime exDate = DateTime.parse(stdin.readLineSync()!);
      print("Enter room type (Single person or Double): ");
      String Type = stdin.readLineSync()!;
      TypeMyRoom type;
      switch (roomType) {
        case "Single Person":
          type = TypeMyRoom.singlePerson;
          break;
        case "Double person":
          type = TypeMyRoom.doublePerson;
          break;
        default:
          print("Invalid room type");
          continue;
      }
      hotel.makeReservation(startDate, endDate, type);
    } else if (choice == 2) {
      hotel.displayReservations();
    } else if (choice == 3) {
      break;
    } else {
      print("Invalid choice");
    }
  }
}
class Hotel {
  List<Room> rooms = [];
  List<ReservationHotal> reservations = [];
  int currantId = 0;
  Hotel() {
    rooms.add(Room(101, TypeMyRoom.singlePerson, 200.0));
    rooms.add(Room(102, TypeMyRoom.singlePerson, 200.0));
    rooms.add(Room(103, TypeMyRoom.singlePerson, 300.0));
    rooms.add(Room(104, TypeMyRoom.doublePerson, 200.0));
    rooms.add(Room(105, TypeMyRoom.doublePerson, 200.0));
    rooms.add(Room(106, TypeMyRoom.doublePerson, 300.0));
  }
  Room? getRoom(TypeMyRoom type) {
    for (var room in rooms) {
      if (room.type == type && room.isPerfect!) {
        return room;
      }
    }
    return null;
  }
  
class ReservationHotal {
  int? id;
  DateTime? startDate;
  DateTime? endDate;
  Room? room;
  ReservationHotal(this.id, this.startDate, this.endDate, this.room) {
    room!.isPerfect = false;
  }
  void display() {
    print("Reservation ID: $id");
    print("Start Date: $startDate");
    print("End Date: $endDate");
    print("Room Number: ${room!.number}");
    print("Room Type: ${room!.type}");
    print("Room Rate: ${room!.rate}");
  }
}
  void makeReservation(DateTime startDate, DateTime endDate, TypeMyRoom type) {
    Room? room = getRoom(type);
    if (room != null) {
      ReservationHotal reservation =
          ReservationHotal(++currantId, startDate, endDate, room);
      reservations.add(reservation);
    } else {
      print("No room of $type");
    }
  }

  void displayReservations() {
    for (var reservation in reservations) {
      reservation.display();
    }
  }
}
 
  }
 
}
