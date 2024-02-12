//Design a Dart class for a digital clock that can display hours, minutes, and seconds. Include methods to set and display the time.


Class DigitalClock {
  Int hours;
  Int minutes;
  Int seconds;

  DigitalClock(this.hours, this.minutes, this.seconds);

  Void setTime(int hours, int minutes, int seconds) {
    If (hours >= 0 && hours < 24 && minutes >= 0 && minutes < 60 && seconds >= 0 && seconds < 60) {
      This.hours = hours;
      This.minutes = minutes;
      This.seconds = seconds;
    } else {
      Print(“Invalid time format.”);
    }
  }

  Void displayTime() {
    String formattedHours = hours.toString().padLeft(2, ‘0’);
    String formattedMinutes = minutes.toString().padLeft(2, ‘0’);
    String formattedSeconds = seconds.toString().padLeft(2, ‘0’);
    Print(“Current time: $formattedHours:$formattedMinutes:$formattedSeconds”);
  }
}

Void main() {
  DigitalClock clock = DigitalClock(12, 0, 0);
  Clock.displayTime(); // Initial time

  Clock.setTime(23, 59, 59);
  Clock.displayTime(); // Updated time

  Clock.setTime(25, 70, 80); // Attempt to set invalid time
}
